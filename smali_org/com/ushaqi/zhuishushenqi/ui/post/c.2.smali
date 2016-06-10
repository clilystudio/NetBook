.class final Lcom/ushaqi/zhuishushenqi/ui/post/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Landroid/widget/EditText;

.field private synthetic b:Lcom/ushaqi/zhuishushenqi/ui/post/AbsPostActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/post/AbsPostActivity;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/c;->b:Lcom/ushaqi/zhuishushenqi/ui/post/AbsPostActivity;

    iput-object p2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/c;->a:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 100
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/c;->b:Lcom/ushaqi/zhuishushenqi/ui/post/AbsPostActivity;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/AbsPostActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 101
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/c;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 102
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/c;->b:Lcom/ushaqi/zhuishushenqi/ui/post/AbsPostActivity;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/post/AbsPostActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 103
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/c;->a:Landroid/widget/EditText;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 104
    return-void
.end method
