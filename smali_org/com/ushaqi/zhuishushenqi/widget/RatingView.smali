.class public Lcom/ushaqi/zhuishushenqi/widget/RatingView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:F

.field private final c:I

.field private d:I

.field private e:I

.field private f:[Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 28
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    const/4 v0, 0x5

    new-array v0, v0, [Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/RatingView;->f:[Landroid/widget/ImageView;

    .line 29
    sget-object v0, Lcom/ushaqi/zhuishushenqi/R$styleable;->RatingView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 30
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ushaqi/zhuishushenqi/widget/RatingView;->a:Ljava/lang/String;

    .line 31
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/ushaqi/zhuishushenqi/widget/RatingView;->b:F

    .line 32
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/ushaqi/zhuishushenqi/widget/RatingView;->c:I

    .line 33
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 34
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03013e

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 35
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 6

    .prologue
    const/4 v5, 0x5

    const/4 v3, -0x2

    const/4 v0, 0x0

    .line 39
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 40
    const-string v1, "list"

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/widget/RatingView;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 41
    const v1, 0x7f020235

    iput v1, p0, Lcom/ushaqi/zhuishushenqi/widget/RatingView;->d:I

    .line 42
    const v1, 0x7f020232

    iput v1, p0, Lcom/ushaqi/zhuishushenqi/widget/RatingView;->e:I

    .line 47
    :cond_0
    :goto_0
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 49
    iget v1, p0, Lcom/ushaqi/zhuishushenqi/widget/RatingView;->b:F

    float-to-int v1, v1

    invoke-virtual {v2, v0, v0, v1, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 50
    new-array v3, v5, [I

    fill-array-data v3, :array_0

    move v1, v0

    .line 51
    :goto_1
    if-ge v1, v5, :cond_2

    .line 52
    iget-object v4, p0, Lcom/ushaqi/zhuishushenqi/widget/RatingView;->f:[Landroid/widget/ImageView;

    aget v0, v3, v1

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/widget/RatingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v4, v1

    .line 53
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/RatingView;->f:[Landroid/widget/ImageView;

    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 51
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 43
    :cond_1
    const-string v1, "review"

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/widget/RatingView;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 44
    const v1, 0x7f020234

    iput v1, p0, Lcom/ushaqi/zhuishushenqi/widget/RatingView;->d:I

    .line 45
    const v1, 0x7f020233

    iput v1, p0, Lcom/ushaqi/zhuishushenqi/widget/RatingView;->e:I

    goto :goto_0

    .line 56
    :cond_2
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/widget/RatingView;->c:I

    if-lez v0, :cond_3

    .line 57
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/widget/RatingView;->c:I

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/widget/RatingView;->setValue(I)V

    .line 59
    :cond_3
    return-void

    .line 50
    nop

    :array_0
    .array-data 4
        0x7f0c03de
        0x7f0c03df
        0x7f0c03e0
        0x7f0c03e1
        0x7f0c03e2
    .end array-data
.end method

.method public setValue(I)V
    .locals 3

    .prologue
    .line 67
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_1

    .line 68
    if-ge v0, p1, :cond_0

    .line 69
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/widget/RatingView;->f:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    iget v2, p0, Lcom/ushaqi/zhuishushenqi/widget/RatingView;->d:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 67
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 71
    :cond_0
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/widget/RatingView;->f:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    iget v2, p0, Lcom/ushaqi/zhuishushenqi/widget/RatingView;->e:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 74
    :cond_1
    return-void
.end method
