initialize-release
addDefaultStyle
	| styles |
	styles := Dictionary newFrom: {
		'font-size' -> 'smaller'.
	}.
	self addStyle: (CSSDefaultStyleRule fromDictionary: styles)