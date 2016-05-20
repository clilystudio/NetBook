.class public Lcom/ushaqi/zhuishushenqi/widget/GameLayoutDownloadButton;
.super Lcom/ushaqi/zhuishushenqi/widget/NewGameDownloadButton;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Lcom/ushaqi/zhuishushenqi/widget/NewGameDownloadButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    return-void
.end method


# virtual methods
.method protected final c()V
    .locals 1

    .prologue
    .line 19
    const-string v0, "\u5b89\u88c5"

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/widget/GameLayoutDownloadButton;->setText(Ljava/lang/CharSequence;)V

    .line 20
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/widget/GameLayoutDownloadButton;->setTextColor(I)V

    .line 21
    const v0, 0x7f0200e2

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/widget/GameLayoutDownloadButton;->setBackgroundResource(I)V

    .line 22
    return-void
.end method
