.class public Lcom/ushaqi/zhuishushenqi/widget/LinkifyTextView;
.super Landroid/widget/TextView;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    return-void
.end method


# virtual methods
.method public setLinkifyText(Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 21
    if-eqz p2, :cond_0

    .line 1035
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/by;

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/LinkifyTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/ushaqi/zhuishushenqi/ui/by;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 1036
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/be;->b()Landroid/text/SpannableString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/widget/LinkifyTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1037
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/bd;

    invoke-direct {v0}, Lcom/ushaqi/zhuishushenqi/ui/bd;-><init>()V

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/widget/LinkifyTextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 26
    :goto_0
    return-void

    .line 2029
    :cond_0
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/be;

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/LinkifyTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/ushaqi/zhuishushenqi/ui/be;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 2030
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/be;->b()Landroid/text/SpannableString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/widget/LinkifyTextView;->setText(Ljava/lang/CharSequence;)V

    .line 2031
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/bd;

    invoke-direct {v0}, Lcom/ushaqi/zhuishushenqi/ui/bd;-><init>()V

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/widget/LinkifyTextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    goto :goto_0
.end method
