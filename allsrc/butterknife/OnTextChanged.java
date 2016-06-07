package butterknife;

import butterknife.internal.ListenerClass;
import java.lang.annotation.Annotation;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@ListenerClass(callbacks="Lbutterknife/OnTextChanged$Callback;", setter="addTextChangedListener", targetType="android.widget.TextView", type="android.text.TextWatcher")
@Retention(RetentionPolicy.CLASS)
@Target({java.lang.annotation.ElementType.METHOD})
public @interface OnTextChanged
{
  public abstract OnTextChanged.Callback callback();

  public abstract int[] value();
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     butterknife.OnTextChanged
 * JD-Core Version:    0.6.0
 */