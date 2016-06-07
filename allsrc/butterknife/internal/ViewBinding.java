package butterknife.internal;

final class ViewBinding
  implements Binding
{
  private final String name;
  private final boolean required;
  private final String type;

  ViewBinding(String paramString1, String paramString2, boolean paramBoolean)
  {
    this.name = paramString1;
    this.type = paramString2;
    this.required = paramBoolean;
  }

  public final String getDescription()
  {
    return "field '" + this.name + "'";
  }

  public final String getName()
  {
    return this.name;
  }

  public final String getType()
  {
    return this.type;
  }

  public final boolean isRequired()
  {
    return this.required;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     butterknife.internal.ViewBinding
 * JD-Core Version:    0.6.0
 */