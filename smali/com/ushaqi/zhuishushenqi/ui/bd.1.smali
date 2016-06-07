.class public final Lcom/ushaqi/zhuishushenqi/ui/bd;
.super Landroid/text/method/LinkMovementMethod;
.source "SourceFile"


# instance fields
.field private a:Lcom/ushaqi/zhuishushenqi/b/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/text/method/LinkMovementMethod;-><init>()V

    return-void
.end method

.method private static a(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Lcom/ushaqi/zhuishushenqi/b/b;
    .locals 3

    .prologue
    .line 46
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 47
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 49
    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v2

    sub-int/2addr v0, v2

    .line 50
    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    .line 52
    invoke-virtual {p0}, Landroid/widget/TextView;->getScrollX()I

    move-result v2

    add-int/2addr v0, v2

    .line 53
    invoke-virtual {p0}, Landroid/widget/TextView;->getScrollY()I

    move-result v2

    add-int/2addr v1, v2

    .line 55
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    .line 56
    invoke-virtual {v2, v1}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v1

    .line 57
    int-to-float v0, v0

    invoke-virtual {v2, v1, v0}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v0

    .line 59
    const-class v1, Lcom/ushaqi/zhuishushenqi/b/b;

    invoke-interface {p1, v0, v0, v1}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ushaqi/zhuishushenqi/b/b;

    .line 60
    const/4 v1, 0x0

    .line 61
    array-length v2, v0

    if-lez v2, :cond_0

    .line 62
    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 64
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public final onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 21
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 22
    invoke-static {p1, p2, p3}, Lcom/ushaqi/zhuishushenqi/ui/bd;->a(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Lcom/ushaqi/zhuishushenqi/b/b;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/bd;->a:Lcom/ushaqi/zhuishushenqi/b/b;

    .line 23
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/bd;->a:Lcom/ushaqi/zhuishushenqi/b/b;

    if-eqz v0, :cond_0

    .line 24
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/bd;->a:Lcom/ushaqi/zhuishushenqi/b/b;

    invoke-virtual {v0, v3}, Lcom/ushaqi/zhuishushenqi/b/b;->a(Z)V

    .line 25
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/bd;->a:Lcom/ushaqi/zhuishushenqi/b/b;

    invoke-interface {p2, v0}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/bd;->a:Lcom/ushaqi/zhuishushenqi/b/b;

    invoke-interface {p2, v1}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v1

    invoke-static {p2, v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 42
    :cond_0
    :goto_0
    return v3

    .line 27
    :cond_1
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 28
    invoke-static {p1, p2, p3}, Lcom/ushaqi/zhuishushenqi/ui/bd;->a(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Lcom/ushaqi/zhuishushenqi/b/b;

    move-result-object v0

    .line 29
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/bd;->a:Lcom/ushaqi/zhuishushenqi/b/b;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/bd;->a:Lcom/ushaqi/zhuishushenqi/b/b;

    if-eq v0, v1, :cond_0

    .line 30
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/bd;->a:Lcom/ushaqi/zhuishushenqi/b/b;

    invoke-virtual {v0, v2}, Lcom/ushaqi/zhuishushenqi/b/b;->a(Z)V

    .line 31
    iput-object v4, p0, Lcom/ushaqi/zhuishushenqi/ui/bd;->a:Lcom/ushaqi/zhuishushenqi/b/b;

    .line 32
    invoke-static {p2}, Landroid/text/Selection;->removeSelection(Landroid/text/Spannable;)V

    goto :goto_0

    .line 35
    :cond_2
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/bd;->a:Lcom/ushaqi/zhuishushenqi/b/b;

    if-eqz v0, :cond_3

    .line 36
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/bd;->a:Lcom/ushaqi/zhuishushenqi/b/b;

    invoke-virtual {v0, v2}, Lcom/ushaqi/zhuishushenqi/b/b;->a(Z)V

    .line 37
    invoke-super {p0, p1, p2, p3}, Landroid/text/method/LinkMovementMethod;->onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z

    .line 39
    :cond_3
    iput-object v4, p0, Lcom/ushaqi/zhuishushenqi/ui/bd;->a:Lcom/ushaqi/zhuishushenqi/b/b;

    .line 40
    invoke-static {p2}, Landroid/text/Selection;->removeSelection(Landroid/text/Spannable;)V

    goto :goto_0
.end method
