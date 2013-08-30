rendering
renderItem: aDirection on: html
	
	html listItem
		with:
			[self renderItemButtonRemove: aDirection On: html.
			
			(html span)
				class: 'homeIconSpan';
				with:
						[self addressList first == aDirection
								ifTrue:
									[(html image)
										url: '../files/RoutesFileLibrary/home.png';
										style: 'height: 16px; width: 16px; margin-right: 5px;'].
							html text: aDirection street.
							html space].
			
			(aDirection delay = 0)
				ifFalse:
					[(html span)
						class: 'iconSpan';
						with:
								[html image url: '../files/RoutesFileLibrary/clock.png'.
									html text: '(' , aDirection delay asString , 'min)']].
				
			(aDirection limitHs = 0)
				ifFalse:
					[(html span)
						class: 'iconSpan';
						with:
								[html text: '(' , aDirection limitHs asString , ':' , aDirection limitMin asString , 'hs)']].
]