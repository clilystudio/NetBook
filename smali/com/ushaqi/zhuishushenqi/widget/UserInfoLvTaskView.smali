.class public Lcom/ushaqi/zhuishushenqi/widget/UserInfoLvTaskView;
.super Lcom/ushaqi/zhuishushenqi/widget/UserInfoTaskView;
.source "SourceFile"


# instance fields
.field private final a:Z

.field private final b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 18
    invoke-direct {p0, p1, p2}, Lcom/ushaqi/zhuishushenqi/widget/UserInfoTaskView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    sget-object v0, Lcom/ushaqi/zhuishushenqi/R$styleable;->UserInfoLvTaskView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 20
    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/ushaqi/zhuishushenqi/widget/UserInfoLvTaskView;->a:Z

    .line 21
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/ushaqi/zhuishushenqi/widget/UserInfoLvTaskView;->b:I

    .line 22
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 23
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 27
    invoke-super {p0}, Lcom/ushaqi/zhuishushenqi/widget/UserInfoTaskView;->onFinishInflate()V

    .line 28
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/widget/UserInfoLvTaskView;->a:Z

    if-eqz v0, :cond_0

    .line 29
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/UserInfoLvTaskView;->mExp:Lcom/ushaqi/zhuishushenqi/widget/ExpView;

    const-string v1, "\u7b49\u7ea7N"

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/widget/ExpView;->setText(Ljava/lang/CharSequence;)V

    .line 1042
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/UserInfoLvTaskView;->mExp:Lcom/ushaqi/zhuishushenqi/widget/ExpView;

    .line 2025
    const v1, 0x7f020117

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/widget/ExpView;->setBackgroundResource(I)V

    .line 2026
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/widget/ExpView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b00da

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/widget/ExpView;->setTextColor(I)V

    .line 35
    :goto_0
    return-void

    .line 32
    :cond_0
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/widget/UserInfoLvTaskView;->b:I

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/widget/UserInfoLvTaskView;->setLv(I)V

    .line 33
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/UserInfoLvTaskView;->mExp:Lcom/ushaqi/zhuishushenqi/widget/ExpView;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/widget/ExpView;->a()V

    goto :goto_0
.end method

.method public setLv(I)V
    .locals 3

    .prologue
    .line 38
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/UserInfoLvTaskView;->mExp:Lcom/ushaqi/zhuishushenqi/widget/ExpView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u7b49\u7ea7"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/widget/ExpView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    return-void
.end method
