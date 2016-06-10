.class public Lcom/ushaqi/zhuishushenqi/widget/UserInfoTaskView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final b:Ljava/lang/String;

.field mExp:Lcom/ushaqi/zhuishushenqi/widget/ExpView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0c0172
    .end annotation
.end field

.field mIcon:Landroid/widget/ImageView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0c00a4
    .end annotation
.end field

.field mTitle:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0c0048
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    sget-object v0, Lcom/ushaqi/zhuishushenqi/R$styleable;->UserInfoTaskView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 34
    const/4 v1, 0x0

    const v2, 0x7f0202e1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/ushaqi/zhuishushenqi/widget/UserInfoTaskView;->a:I

    .line 35
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ushaqi/zhuishushenqi/widget/UserInfoTaskView;->b:Ljava/lang/String;

    .line 36
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 38
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03017a

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 39
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 43
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 44
    invoke-static {p0}, Lbutterknife/ButterKnife;->inject(Landroid/view/View;)V

    .line 45
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/UserInfoTaskView;->mIcon:Landroid/widget/ImageView;

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/widget/UserInfoTaskView;->a:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 46
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/UserInfoTaskView;->mTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/widget/UserInfoTaskView;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    return-void
.end method

.method public setExp(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/UserInfoTaskView;->mExp:Lcom/ushaqi/zhuishushenqi/widget/ExpView;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/UserInfoTaskView;->mExp:Lcom/ushaqi/zhuishushenqi/widget/ExpView;

    invoke-virtual {v0, p1}, Lcom/ushaqi/zhuishushenqi/widget/ExpView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    :cond_0
    return-void
.end method
