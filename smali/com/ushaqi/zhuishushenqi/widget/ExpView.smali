.class public Lcom/ushaqi/zhuishushenqi/widget/ExpView;
.super Landroid/widget/TextView;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    const/high16 v0, 0x41100000    # 9.0f

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/widget/ExpView;->setTextSize(F)V

    .line 19
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/widget/ExpView;->setGravity(I)V

    .line 21
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/ExpView;->a()V

    .line 22
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 30
    const v0, 0x7f020118

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/widget/ExpView;->setBackgroundResource(I)V

    .line 31
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/ExpView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b00db

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/widget/ExpView;->setTextColor(I)V

    .line 32
    return-void
.end method
