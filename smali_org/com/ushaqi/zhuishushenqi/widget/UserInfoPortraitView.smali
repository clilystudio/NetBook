.class public Lcom/ushaqi/zhuishushenqi/widget/UserInfoPortraitView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field private final a:F

.field private final b:F

.field private c:Landroid/widget/TextView;

.field private d:Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;

.field private e:Lcom/ushaqi/zhuishushenqi/widget/ProgressView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/UserInfoPortraitView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/widget/UserInfoPortraitView;->a:F

    .line 27
    const/high16 v0, 0x42a00000

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/widget/UserInfoPortraitView;->a:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/widget/UserInfoPortraitView;->b:F

    .line 35
    return-void
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/widget/UserInfoPortraitView;)Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/UserInfoPortraitView;->d:Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;

    return-object v0
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 6

    .prologue
    const/4 v5, -0x2

    const/4 v4, 0x0

    .line 39
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 1046
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/widget/UserInfoPortraitView;->b:F

    float-to-int v1, v1

    iget v2, p0, Lcom/ushaqi/zhuishushenqi/widget/UserInfoPortraitView;->b:F

    float-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1047
    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/UserInfoPortraitView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 1048
    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1050
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, p0, Lcom/ushaqi/zhuishushenqi/widget/UserInfoPortraitView;->b:F

    float-to-int v2, v2

    iget v3, p0, Lcom/ushaqi/zhuishushenqi/widget/UserInfoPortraitView;->b:F

    float-to-int v3, v3

    invoke-direct {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1051
    new-instance v2, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/UserInfoPortraitView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/ushaqi/zhuishushenqi/widget/UserInfoPortraitView;->e:Lcom/ushaqi/zhuishushenqi/widget/ProgressView;

    .line 1052
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/widget/UserInfoPortraitView;->e:Lcom/ushaqi/zhuishushenqi/widget/ProgressView;

    invoke-virtual {v2, v0}, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1053
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/UserInfoPortraitView;->e:Lcom/ushaqi/zhuishushenqi/widget/ProgressView;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 1055
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/UserInfoPortraitView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/UserInfoPortraitView;->d:Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;

    .line 1056
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/widget/UserInfoPortraitView;->b:F

    const/high16 v2, 0x41300000

    iget v3, p0, Lcom/ushaqi/zhuishushenqi/widget/UserInfoPortraitView;->a:F

    mul-float/2addr v2, v3

    sub-float/2addr v0, v2

    .line 1057
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    float-to-int v3, v0

    float-to-int v0, v0

    invoke-direct {v2, v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1058
    const/16 v0, 0xd

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1059
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/UserInfoPortraitView;->d:Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;

    invoke-virtual {v0, v2}, Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1060
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/UserInfoPortraitView;->d:Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 1062
    invoke-virtual {p0, v1}, Lcom/ushaqi/zhuishushenqi/widget/UserInfoPortraitView;->addView(Landroid/view/View;)V

    .line 1066
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/UserInfoPortraitView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/UserInfoPortraitView;->c:Landroid/widget/TextView;

    .line 1067
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/UserInfoPortraitView;->c:Landroid/widget/TextView;

    const v1, 0x7f0200c1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 1068
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/UserInfoPortraitView;->c:Landroid/widget/TextView;

    const/high16 v1, 0x41400000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1069
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/UserInfoPortraitView;->c:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 1070
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/UserInfoPortraitView;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/UserInfoPortraitView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x106000b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1071
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1072
    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1073
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1074
    const/high16 v1, 0x40800000

    iget v2, p0, Lcom/ushaqi/zhuishushenqi/widget/UserInfoPortraitView;->a:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v4, v4, v4, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 1075
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/widget/UserInfoPortraitView;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1076
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/UserInfoPortraitView;->c:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/widget/UserInfoPortraitView;->addView(Landroid/view/View;)V

    .line 43
    return-void
.end method

.method public setAvatar(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 80
    invoke-static {}, Lcom/nostra13/universalimageloader/core/f;->a()Lcom/nostra13/universalimageloader/core/f;

    move-result-object v0

    new-instance v1, Lcom/ushaqi/zhuishushenqi/widget/aD;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/widget/aD;-><init>(Lcom/ushaqi/zhuishushenqi/widget/UserInfoPortraitView;)V

    invoke-virtual {v0, p1, v1}, Lcom/nostra13/universalimageloader/core/f;->a(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/d/a;)V

    .line 98
    return-void
.end method

.method public setExp(I)V
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/UserInfoPortraitView;->e:Lcom/ushaqi/zhuishushenqi/widget/ProgressView;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->setMax(I)V

    .line 106
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/UserInfoPortraitView;->e:Lcom/ushaqi/zhuishushenqi/widget/ProgressView;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->setProgress(F)V

    .line 107
    return-void
.end method

.method public setLv(I)V
    .locals 3

    .prologue
    .line 101
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/UserInfoPortraitView;->c:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "lv."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    return-void
.end method
