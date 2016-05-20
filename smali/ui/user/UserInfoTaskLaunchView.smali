.class public Lcom/ushaqi/zhuishushenqi/ui/user/UserInfoTaskLaunchView;
.super Lcom/ushaqi/zhuishushenqi/widget/UserInfoExTaskView;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lcom/ushaqi/zhuishushenqi/widget/UserInfoExTaskView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 23
    invoke-super {p0}, Lcom/ushaqi/zhuishushenqi/widget/UserInfoExTaskView;->onFinishInflate()V

    .line 24
    const-string v0, "\u7ecf\u9a8c+10"

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/user/UserInfoTaskLaunchView;->setExp(Ljava/lang/String;)V

    .line 25
    return-void
.end method
