.class final Lcom/ushaqi/zhuishushenqi/ui/post/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/post/a;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/post/a;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/b;->a:Lcom/ushaqi/zhuishushenqi/ui/post/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 73
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/b;->a:Lcom/ushaqi/zhuishushenqi/ui/post/a;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/post/a;->a:Lcom/ushaqi/zhuishushenqi/ui/post/AbsPostActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/AbsPostActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/post/AbsPostActivity;)Landroid/widget/EditText;

    move-result-object v1

    .line 74
    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    .line 75
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/b;->a:Lcom/ushaqi/zhuishushenqi/ui/post/a;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/post/a;->a:Lcom/ushaqi/zhuishushenqi/ui/post/AbsPostActivity;

    const-string v2, "input_method"

    invoke-virtual {v0, v2}, Lcom/ushaqi/zhuishushenqi/ui/post/AbsPostActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 76
    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 77
    return-void
.end method
