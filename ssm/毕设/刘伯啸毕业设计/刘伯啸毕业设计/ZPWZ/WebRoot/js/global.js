// JavaScript Document
jpjs.config({
	basepath: window.CONFIG.HOST + window.CONFIG.COMBOPATH,
	comboHost: window.CONFIG.HOST + '',
	comboPath: window.CONFIG.COMBOPATH,
	normailzeNames: window.VERSION,
	charset: window.CONFIG.CHARSET,
	combos: {
		'@changeClass':'widge.changeClass',
		'@checkBoxer':'widge.checkBoxer',
		'@fixed': 'tools.fixed',
		'@position': 'tools.position',
		'@input': 'widge.input',
		'@dateFormat': 'tools.dateFormat',
		'@iframe': [
			'tools.iframe', 'tools.position'
		],
		'@drag': 'tools.drag',
		'@resize': 'tools.resize',
		'@imgLoader': 'tools.imgLoader',
		'@fileUploader': 'widge.fileUploader',
		'@imageCrop': [
			'@imgLoader', '@drag', '@resize', 'widge.imageCrop'
		],
		'@imageEditor': [
			'@imageCrop', '@fileUploader', 'widge.imageEditor'
		],
		'@dataSource': 'module.dataSource',
		'@popup': [
			'@iframe','widge.popup'
		],
		'@tabs': [
			'widge.tabs', '@changeClass'
		],
		'@mask': [
			'@popup', 'widge.overlay.mask'
		],
		'@select': [
			'@popup', '@dataSource', 'widge.select'
		],
		'@multipleSelect': [
			'@select', '@checkBoxer', 'widge.multipleSelect'
		],
		'@dialog': [
			'@mask', 'widge.overlay.jpDialog', 'base.event', 'tools.fixed'
		],
		'@confirmBox': [
			'@dialog', 'widge.overlay.confirmBox'
		],
		'@checkLogin': [
			'@dialog', 'product.checkLogin'
		],
		'@textPlaceHolder': [
			'@input', 'widge.textPlaceHolder'
		],
		'@autoComplete': [
			'@popup', '@dataSource', '@textPlaceHolder', 'widge.autoComplete.search', 'widge.autoComplete.filter'
		],
		'@search': [
			'@select', '@textPlaceHolder', '@confirmBox',
			'product.jobSearch.jobTopSearch', 'product.jobSearch.search', 
			'widge.autoComplete.search', 'widge.autoComplete.filter'
		],
		'@receiveMailDialog': [
			'@confirmBox', '@dataSource', 'product.mail.receiveMailDialog'
		],
		'emailTip': [
			'@autoComplete', 'product.emailTip'
		],
		'@verifier': 'module.verifier',
		'@validator': [
			'@verifier', '@dataSource', 'widge.validator.rule', 'widge.validator.item',
			'widge.validator.handler', 'widge.validator.form'
		],
		'@calendar': [
			'@dateFormat', '@iframe', 'widge.calendar.baseCalendar', 'widge.calendar.calendar',
			'widge.calendar.dateColumn', 'widge.calendar.monthColumn', 'widge.calendar.yearColumn'
		],
		'@jobListSelecter': [
			'@dialog', 'product.xiake.jobListSelecter'
		],
		'@templateSaver': [
			'@popup', '@dataSource', 'product.xiake.templateSaver'
		],
		'@templateSelecter': [
			'@popup', '@dataSource', 'product.xiake.templateSelecter'
		],
		'@jpCommon': 'product.jpCommon',
		'@actions': 'jpjob.actions',
		'@jobAutocomplete': 'jpjob.autocomplete',
		'@homeHead': [
			'@jobAutocomplete', 'jpjob.homeHead', 'jpjob.jobCookie'
		],
		'@calling': 'jpjob.calling',
		'@areaMulitiple': 'jpjob.areaMulitiple',
		'@jobCertificate': 'jpjob.jobCertificate',
		'@jobFlexSlider': 'jpjob.jobFlexSlider',
		'@jobSkill': 'jpjob.jobSkill',
		'@jobDialog': 'jpjob.jobDialog',
		'@jobsort': [
			'@jobDialog', 'jpjob.jobsort'
		],
		'@jobsort2': [
			'@jobDialog', 'jpjob.jobsort2'
		],
		'@jobDater': 'jpjob.jobDater',
		'@areaSimple': 'jpjob.areaSimple',
		'@jobPrettyPhoto': 'jpjob.jobPrettyPhoto',
		'@uploadify': 'uploadify',
		'@form': [
			'jpjob.jobValidate', 'jpjob.jobForm'
		],
		'@fancybox': [
			'jpjob.fancybox', 'jpjob.fancybox'
		]
	}
});