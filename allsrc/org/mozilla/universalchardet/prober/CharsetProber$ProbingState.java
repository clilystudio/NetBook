package org.mozilla.universalchardet.prober;

public enum CharsetProber$ProbingState
{
  static
  {
    ProbingState[] arrayOfProbingState = new ProbingState[3];
    arrayOfProbingState[0] = DETECTING;
    arrayOfProbingState[1] = FOUND_IT;
    arrayOfProbingState[2] = NOT_ME;
    a = arrayOfProbingState;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     org.mozilla.universalchardet.prober.CharsetProber.ProbingState
 * JD-Core Version:    0.6.0
 */