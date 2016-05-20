.class final Lcom/ushaqi/zhuishushenqi/reader/b;
.super Landroid/view/animation/Animation;
.source "SourceFile"


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;)V
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/b;->a:Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method protected final applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 3

    .prologue
    .line 149
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/b;->a:Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;->a(Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/b;->a:Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;->b(Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/b;->a:Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;->c(Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;)I

    move-result v1

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/b;->a:Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;

    invoke-static {v2}, Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;->c(Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int v2, v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 151
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/b;->a:Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/b;->a:Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;->b(Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 153
    :cond_0
    return-void
.end method
