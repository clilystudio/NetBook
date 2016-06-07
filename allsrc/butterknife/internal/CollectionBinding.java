package butterknife.internal;

final class CollectionBinding
  implements Binding
{
  private final CollectionBinding.Kind kind;
  private final String name;
  private final boolean required;
  private final String type;

  CollectionBinding(String paramString1, String paramString2, CollectionBinding.Kind paramKind, boolean paramBoolean)
  {
    this.name = paramString1;
    this.type = paramString2;
    this.kind = paramKind;
    this.required = paramBoolean;
  }

  public final String getDescription()
  {
    return "field '" + this.name + "'";
  }

  public final CollectionBinding.Kind getKind()
  {
    return this.kind;
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
 * Qualified Name:     butterknife.internal.CollectionBinding
 * JD-Core Version:    0.6.0
 */