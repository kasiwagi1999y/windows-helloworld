#include <windows.h>

int wmain(int argc, wchar_t *argv[], wchar_t *envp[]) {
  MessageBoxW(NULL, L"Hello World!", L"メッセージボックス", MB_OK);
  return 0;
}
