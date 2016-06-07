package butterknife.internal;

final class Parameter
{
  static final Parameter[] NONE = new Parameter[0];
  private final int listenerPosition;
  private final String type;

  Parameter(int paramInt, String paramString)
  {
    this.listenerPosition = paramInt;
    this.type = paramString;
  }

  final int getListenerPosition()
  {
    return this.listenerPosition;
  }

  final String getType()
  {
    return this.type;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     butterknife.internal.Parameter
 * JD-Core Version:    0.6.0
 */