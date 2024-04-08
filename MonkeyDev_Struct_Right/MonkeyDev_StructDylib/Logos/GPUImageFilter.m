%hook GPUImageFilter
//+ (const float *)textureCoordinatesForRotation:(unsigned long long)arg1 { %log; const float * r = %orig; HBLogDebug(@" = 0x%x", (unsigned int)r); return r; }
//- (struct __CVBuffer *)renderTarget { %log; struct __CVBuffer * r = %orig; HBLogDebug(@" = %p", r); return r; }
//- (void)setCurrentlyReceivingMonochromeInput:(_Bool )currentlyReceivingMonochromeInput { %log; %orig; }
//- (_Bool )currentlyReceivingMonochromeInput { %log; _Bool  r = %orig; HBLogDebug(@" = %d", r); return r; }
//- (void)setPreventRendering:(_Bool )preventRendering { %log; %orig; }
//- (_Bool )preventRendering { %log; _Bool  r = %orig; HBLogDebug(@" = %d", r); return r; }
//- (void).cxx_destruct { %log; %orig; }
//- (_Bool)wantsMonochromeInput { %log; _Bool r = %orig; HBLogDebug(@" = %d", r); return r; }
//- (void)endProcessing { %log; %orig; }
//- (struct CGSize)maximumOutputSize { %log; struct CGSize r = %orig; return r; }
- (void)forceProcessingAtSizeRespectingAspectRatio:(struct CGSize)arg1 { %log; %orig;
    HBLogDebug(@"iOSER: %s -forceProcessingAtSizeRespectingAspectRatio:%@",object_getClassName(self),NSStringFromCGSize(arg1));
}
- (void)forceProcessingAtSize:(struct CGSize)arg1 { %log; %orig;
     HBLogDebug(@"iOSER: %s -forceProcessingAtSize:%@",object_getClassName(self),NSStringFromCGSize(arg1));
}
- (void)setInputRotation:(unsigned long long)arg1 atIndex:(long long)arg2 { %log; %orig; }
//- (void)setInputSize:(struct CGSize)arg1 atIndex:(long long)arg2 { %log; %orig;
//    HBLogDebug(@"iOSER: %s -setInputSize:%@",object_getClassName(self),NSStringFromCGSize(arg1));
//}
- (struct CGPoint)rotatedPoint:(struct CGPoint)arg1 forRotation:(unsigned long long)arg2 { %log; struct CGPoint r = %orig; return r; }
- (struct CGSize)rotatedSize:(struct CGSize)arg1 forIndex:(long long)arg2 { %log; struct CGSize r = %orig; return r; }
//- (void)setInputFramebuffer:(id)arg1 atIndex:(long long)arg2 { %log; %orig; }
//- (long long)nextAvailableTextureIndex { %log; long long r = %orig; HBLogDebug(@" = %lld", r); return r; }
//- (void)newFrameReadyAtTime:(CDStruct_1b6d18a9)arg1 atIndex:(long long)arg2 { %log; %orig; }
//- (void)setUniformsForProgramAtIndex:(unsigned long long)arg1 { %log; %orig; }
//- (void)setAndExecuteUniformStateCallbackAtIndex:(int)arg1 forProgram:(id)arg2 toBlock:(CDUnknownBlockType)arg3 { %log; %orig; }
//- (void)setInteger:(int)arg1 forUniform:(int)arg2 program:(id)arg3 { %log; %orig; }
//- (void)setFloatArray:(float *)arg1 length:(int)arg2 forUniform:(int)arg3 program:(id)arg4 { %log; %orig; }
//- (void)setVec4:(struct GPUVector4)arg1 forUniform:(int)arg2 program:(id)arg3 { %log; %orig; }
//- (void)setVec3:(struct GPUVector3)arg1 forUniform:(int)arg2 program:(id)arg3 { %log; %orig; }
//- (void)setSize:(struct CGSize)arg1 forUniform:(int)arg2 program:(id)arg3 { %log; %orig; }
//- (void)setPoint:(struct CGPoint)arg1 forUniform:(int)arg2 program:(id)arg3 { %log; %orig; }
//- (void)setFloat:(float)arg1 forUniform:(int)arg2 program:(id)arg3 { %log; %orig; }
//- (void)setMatrix4f:(struct GPUMatrix4x4)arg1 forUniform:(int)arg2 program:(id)arg3 { %log; %orig; }
//- (void)setMatrix3f:(struct GPUMatrix3x3)arg1 forUniform:(int)arg2 program:(id)arg3 { %log; %orig; }
//- (void)setFloatArray:(float *)arg1 length:(int)arg2 forUniform:(id)arg3 { %log; %orig; }
//- (void)setFloatVec4:(struct GPUVector4)arg1 forUniform:(id)arg2 { %log; %orig; }
//- (void)setFloatVec3:(struct GPUVector3)arg1 forUniformName:(id)arg2 { %log; %orig; }
//- (void)setPoint:(struct CGPoint)arg1 forUniformName:(id)arg2 { %log; %orig; }
//- (void)setSize:(struct CGSize)arg1 forUniformName:(id)arg2 { %log; %orig; }
//- (void)setFloat:(float)arg1 forUniformName:(id)arg2 { %log; %orig; }
//- (void)setInteger:(int)arg1 forUniformName:(id)arg2 { %log; %orig; }
//- (void)setBackgroundColorRed:(float)arg1 green:(float)arg2 blue:(float)arg3 alpha:(float)arg4 { %log; %orig; }
//- (struct CGSize)outputFrameSize { %log; struct CGSize r = %orig; return r; }
//- (void)informTargetsAboutNewFrameAtTime:(CDStruct_1b6d18a9)arg1 { %log; %orig; }
//- (void)renderToTextureWithVertices:(const float *)arg1 textureCoordinates:(const float *)arg2 { %log; %orig; }
//- (struct CGSize)sizeOfFBO { %log; struct CGSize r = %orig; return r; }
//- (struct CGImage *)newCGImageFromCurrentlyProcessedOutput { %log; struct CGImage * r = %orig; HBLogDebug(@" = %p", r); return r; }
//- (void)useNextFrameForImageCapture { %log; %orig; }
//- (void)dealloc { %log; %orig; }
//- (void)setupFilterForSize:(struct CGSize)arg1 { %log; %orig; }
- (void)initializeAttributes { %log; %orig; }
- (id)init { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
//- (id)initWithFragmentShaderFromFile:(id)arg1 {
//    %log;
//    id r = %orig;
//    HBLogDebug(@"iOSRE: class:%s initWithFragmentShaderFromFile = %@", object_getClassName(self),arg1);
//    HBLogDebug(@" = %@", r);
//    return r;
//}
//- (id)initWithFragmentShaderFromString:(id)arg1 {
//    %log;
//    id r = %orig;
////    HBLogDebug(@"iOSRE: initWithFragmentShaderFromString = %@", arg1);
//    HBLogDebug(@" = %@", r);
//    return r;
//
//}
- (id)initWithVertexShaderFromString:(id)arg1 fragmentShaderFromString:(id)arg2 {
    %log; id r = %orig;
    HBLogDebug(@" = %@", r);
//    HBLogDebug(@"iOSRE: class:%s  initWithVertexShaderFromString===>:%@===> fragmentShader:%@<===", object_getClassName(self), arg1, arg2);
////    HBLogDebug(@"iOSRE: class:%s=== fragmentShader:%@===", object_getClassName(self), arg2);
//    NSString *fileName = [NSString stringWithFormat:@"%s.txt",object_getClassName(self)];
//    NSArray *allPaths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
//       NSString *documentsDirectory = [allPaths objectAtIndex:0];
//       NSString *pathForLog = [documentsDirectory stringByAppendingPathComponent:fileName];
//
//       freopen([pathForLog cStringUsingEncoding:NSASCIIStringEncoding],"a+",stderr);
    
    return r;
}

//- (NSString *)debugDescription { %log; NSString * r = %orig; HBLogDebug(@" = %@", r); return r; }
//- (NSString *)description { %log; NSString * r = %orig; HBLogDebug(@" = %@", r); return r; }
//- (unsigned long long )hash { %log; unsigned long long  r = %orig; HBLogDebug(@" = %llu", r); return r; }
//- (Class )superclass { %log; Class  r = %orig; HBLogDebug(@" = %@", r); return r; }
%end
