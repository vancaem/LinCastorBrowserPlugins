JsOsaDAS1.001.00bplist00�Vscript_�var app = Application.currentApplication();
app.includeStandardAdditions = true;

ObjC.import("Cocoa");

function exec_shell(p) {
	var task = $.NSTask.alloc.init;
 	task.setLaunchPath("/bin/sh");
 	task.setArguments(["-c", p]);

 	var pipe = $.NSPipe.pipe;

	task.setStandardOutput(pipe);
 	task.launch;

  	var data = pipe.fileHandleForReading.readDataToEndOfFile;
	var rv = $.NSString.alloc.initWithDataEncoding(data, $.NSUTF8StringEncoding);

  	return ObjC.unwrap(rv);
}

function handle_url(args) {
	try {
		var url = args['URL'];
		var host = args['URL_HOST'];
		var scheme = args['URL_SCHEME'];
		var appname = args['APP_NAME'];

		//extract post/page id from the page
		var rv = exec_shell('/usr/bin/curl -s '+url+' | grep "<link rel=\'shortlink\'" | head -1 ');
	
		var a = rv.match(/href='(.*?)\?p=(\d+)/);
		if (a) {
			url = a[1] + 'wp-admin/post.php?post=' + a[2] + '&action=edit';
		}
		else {
			url = scheme + "://" + host + "/wp-admin";
		}
	
		if ("Google Chrome" === appname) {
			open_chrome(url);
		}
		else {
			open_safari(url);
		}
	}
	catch (e) {
		app.displayDialog("error:" + e);
	}	
	return true;
}

function open_safari(url) {
	var safari = Application("Safari");
	var tab = new safari.Tab();
	safari.windows[0].tabs.push(tab);
	
	safari.activate();
	tab.url = url;
	safari.windows[0].currentTab = tab;
}

function open_chrome(url) {
	var chrome = Application("Google Chrome");
	var tab = chrome.Tab({
		url:url
	});
	
	chrome.activate();
	chrome.windows[0].tabs.push(tab);
}                              �jscr  ��ޭ