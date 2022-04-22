#include <stdio.h>

#include <jni.h>

JNIEXPORT void JNICALL Java_HelloWorld_hi(JNIEnv *env, jobject o) {
  printf("hello world\n");
}
