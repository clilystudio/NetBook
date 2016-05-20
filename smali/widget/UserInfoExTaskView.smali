.class public Lcom/ushaqi/zhuishushenqi/widget/UserInfoExTaskView;
.super Lcom/ushaqi/zhuishushenqi/widget/UserInfoTaskView;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0, p1, p2}, Lcom/ushaqi/zhuishushenqi/widget/UserInfoTaskView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 13
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 17
    invoke-super {p0}, Lcom/ushaqi/zhuishushenqi/widget/UserInfoTaskView;->onFinishInflate()V

    .line 18
    const-string v0, "\u7ecf\u9a8c+5"

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/widget/UserInfoExTaskView;->setExp(Ljava/lang/String;)V

    .line 19
    return-void
.end method
