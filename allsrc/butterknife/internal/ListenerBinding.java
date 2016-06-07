package butterknife.internal;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

final class ListenerBinding
  implements Binding
{
  private final String name;
  private final List<Parameter> parameters;
  private final boolean required;

  ListenerBinding(String paramString, List<Parameter> paramList, boolean paramBoolean)
  {
    this.name = paramString;
    this.parameters = Collections.unmodifiableList(new ArrayList(paramList));
    this.required = paramBoolean;
  }

  public final String getDescription()
  {
    return "method '" + this.name + "'";
  }

  public final String getName()
  {
    return this.name;
  }

  public final List<Parameter> getParameters()
  {
    return this.parameters;
  }

  public final boolean isRequired()
  {
    return this.required;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     butterknife.internal.ListenerBinding
 * JD-Core Version:    0.6.0
 */