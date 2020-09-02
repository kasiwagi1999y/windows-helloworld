#include <windows.h>

int WINAPI WinMain(HINSTANCE hInstance, HINSTANCE hPrevInstance, PSTR lpCmdLine,
                   int nCmdShow) {
  MessageBox(NULL, TEXT("Hello World!"), TEXT("メッセージボックス"),
             MB_OK);
  return 0;
}
