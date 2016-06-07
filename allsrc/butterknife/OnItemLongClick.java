package butterknife;

import butterknife.internal.ListenerClass;
import java.lang.annotation.Annotation;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@ListenerClass(method={@butterknife.internal.ListenerMethod(defaultReturn="false", name="onItemLongClick", parameters={"android.widget.AdapterView<?>", "android.view.View", "int", "long"}, returnType="boolean")}, setter="setOnItemLongClickListener", targetType="android.widget.AdapterView<?>", type="android.widget.AdapterView.OnItemLongClickListener")
@Retention(RetentionPolicy.CLASS)
@Target({java.lang.annotation.ElementType.METHOD})
public @interface OnItemLongClick
{
  public abstract int[] value();
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     butterknife.OnItemLongClick
 * JD-Core Version:    0.6.0
 */