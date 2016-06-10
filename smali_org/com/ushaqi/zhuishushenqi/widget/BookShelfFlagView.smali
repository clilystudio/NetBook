.class public Lcom/ushaqi/zhuishushenqi/widget/BookShelfFlagView;
.super Landroid/widget/TextView;
.source "SourceFile"


# instance fields
.field private a:I

.field private final b:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/widget/BookShelfFlagView;->setVisibility(I)V

    .line 50
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/widget/BookShelfFlagView;->setTextColor(I)V

    .line 51
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/widget/BookShelfFlagView;->setGravity(I)V

    .line 53
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/BookShelfFlagView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06007e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 54
    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/widget/BookShelfFlagView;->setTextSize(F)V

    .line 56
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/BookShelfFlagView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02028a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/BookShelfFlagView;->b:Landroid/graphics/drawable/Drawable;

    .line 57
    return-void
.end method

.method private a()V
    .locals 3

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/BookShelfFlagView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 112
    const v1, 0x7f060031

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 113
    const v2, 0x7f060030

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 114
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/BookShelfFlagView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 115
    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 116
    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 117
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 2

    .prologue
    .line 61
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/widget/BookShelfFlagView;->a:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 62
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 66
    :goto_0
    return-void

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/BookShelfFlagView;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/widget/BookShelfFlagView;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/ushaqi/zhuishushenqi/widget/BookShelfFlagView;->setMeasuredDimension(II)V

    goto :goto_0
.end method

.method public setType(I)V
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 73
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/widget/BookShelfFlagView;->a:I

    .line 1078
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/widget/BookShelfFlagView;->a:I

    packed-switch v0, :pswitch_data_0

    .line 1103
    :goto_0
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/widget/BookShelfFlagView;->a:I

    if-nez v0, :cond_0

    .line 1104
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/widget/BookShelfFlagView;->setVisibility(I)V

    :goto_1
    return-void

    .line 1080
    :pswitch_0
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/widget/BookShelfFlagView;->a()V

    .line 1081
    const v0, 0x7f020289

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/widget/BookShelfFlagView;->setBackgroundResource(I)V

    .line 1082
    const-string v0, "\u63a8\u5e7f"

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/widget/BookShelfFlagView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1085
    :pswitch_1
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/widget/BookShelfFlagView;->a()V

    .line 1086
    const v0, 0x7f02027e

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/widget/BookShelfFlagView;->setBackgroundResource(I)V

    .line 1087
    const-string v0, "\u516c\u544a"

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/widget/BookShelfFlagView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1120
    :pswitch_2
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/BookShelfFlagView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1121
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1122
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1091
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/widget/BookShelfFlagView;->setText(Ljava/lang/CharSequence;)V

    .line 1092
    const v0, 0x7f02028a

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/widget/BookShelfFlagView;->setBackgroundResource(I)V

    goto :goto_0

    .line 1095
    :pswitch_3
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/widget/BookShelfFlagView;->a()V

    .line 1096
    const v0, 0x7f020288

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/widget/BookShelfFlagView;->setBackgroundResource(I)V

    .line 1097
    const-string v0, "\u5f85\u6740"

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/widget/BookShelfFlagView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1106
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/widget/BookShelfFlagView;->setVisibility(I)V

    goto :goto_1

    .line 1078
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
