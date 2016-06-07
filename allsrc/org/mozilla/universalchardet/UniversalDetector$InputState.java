package org.mozilla.universalchardet;

public enum UniversalDetector$InputState
{
  static
  {
    ESC_ASCII = new InputState("ESC_ASCII", 1);
    HIGHBYTE = new InputState("HIGHBYTE", 2);
    InputState[] arrayOfInputState = new InputState[3];
    arrayOfInputState[0] = PURE_ASCII;
    arrayOfInputState[1] = ESC_ASCII;
    arrayOfInputState[2] = HIGHBYTE;
    a = arrayOfInputState;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     org.mozilla.universalchardet.UniversalDetector.InputState
 * JD-Core Version:    0.6.0
 */