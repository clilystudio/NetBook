.class final Lcom/ushaqi/zhuishushenqi/ui/post/W;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field private synthetic a:Landroid/widget/EditText;

.field private synthetic b:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;Landroid/widget/EditText;Landroid/widget/Button;)V
    .locals 0

    .prologue
    .line 440
    iput-object p2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/W;->a:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/ushaqi/zhuishushenqi/ui/post/W;->b:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .prologue
    .line 456
    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 443
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    .prologue
    .line 447
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/W;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/arcsoft/hpay100/a/a;->Q(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 448
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/W;->b:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 452
    :goto_0
    return-void

    .line 450
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/W;->b:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method
