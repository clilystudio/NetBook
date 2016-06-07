.class public Lcom/ushaqi/zhuishushenqi/widget/UserInfoVoteView;
.super Lcom/ushaqi/zhuishushenqi/widget/UserInfoExTaskView;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Lcom/ushaqi/zhuishushenqi/widget/UserInfoExTaskView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 19
    invoke-super {p0}, Lcom/ushaqi/zhuishushenqi/widget/UserInfoExTaskView;->onFinishInflate()V

    .line 20
    const v0, 0x7f0c049f

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/widget/UserInfoVoteView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 21
    const-string v0, "\u7ecf\u9a8c+15"

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/widget/UserInfoVoteView;->setExp(Ljava/lang/String;)V

    .line 22
    return-void
.end method
