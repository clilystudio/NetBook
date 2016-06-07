package butterknife.internal;

import java.lang.annotation.Annotation;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Retention(RetentionPolicy.RUNTIME)
@Target({java.lang.annotation.ElementType.ANNOTATION_TYPE})
public @interface ListenerClass
{
  public abstract Class<? extends Enum<?>> callbacks();

  public abstract int genericArguments();

  public abstract ListenerMethod[] method();

  public abstract String setter();

  public abstract String targetType();

  public abstract String type();
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     butterknife.internal.ListenerClass
 * JD-Core Version:    0.6.0
 */