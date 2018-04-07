//Created by iKilledAppl3 on Apri 6, 2018
//Based on the Flex patch by sinfool! Thanks for the help!

%hook IGStoryTraySectionController
-(id)initWithUserSession:(id)arg1 dataController:(id)arg2 dataSource:(id)arg3 loggingContext:(id)arg4 loggingDelegate:(id)arg5 entryPoint:(long long)arg6 traySectionConfiguration:(id)arg7 storyViewerConfiguration:(id)arg8 {
	 return %orig (nil, nil, nil, nil, nil, nil, nil, nil);
	
}
%end