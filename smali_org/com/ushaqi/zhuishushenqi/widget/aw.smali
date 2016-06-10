.class final Lcom/ushaqi/zhuishushenqi/widget/aw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/widget/SearchEditText;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/widget/SearchEditText;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/widget/aw;->a:Lcom/ushaqi/zhuishushenqi/widget/SearchEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .prologue
    .line 56
    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/aw;->a:Lcom/ushaqi/zhuishushenqi/widget/SearchEditText;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/widget/SearchEditText;->a(Lcom/ushaqi/zhuishushenqi/widget/SearchEditText;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 40
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/aw;->a:Lcom/ushaqi/zhuishushenqi/widget/SearchEditText;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/widget/SearchEditText;->a(Lcom/ushaqi/zhuishushenqi/widget/SearchEditText;Z)Z

    .line 46
    :cond_0
    :goto_0
    return-void

    .line 42
    :cond_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/aw;->a:Lcom/ushaqi/zhuishushenqi/widget/SearchEditText;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/widget/SearchEditText;->b(Lcom/ushaqi/zhuishushenqi/widget/SearchEditText;)Lcom/ushaqi/zhuishushenqi/widget/ax;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/aw;->a:Lcom/ushaqi/zhuishushenqi/widget/SearchEditText;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/widget/SearchEditText;->b(Lcom/ushaqi/zhuishushenqi/widget/SearchEditText;)Lcom/ushaqi/zhuishushenqi/widget/ax;

    move-result-object v0

    invoke-interface {v0}, Lcom/ushaqi/zhuishushenqi/widget/ax;->a()V

    goto :goto_0
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 51
    return-void
.end method
