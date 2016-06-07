.class final Lcom/c/b/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/c/a/D;
.implements Lcom/c/a/b;


# instance fields
.field private synthetic a:Lcom/c/b/b;


# direct methods
.method private constructor <init>(Lcom/c/b/b;)V
    .locals 0

    .prologue
    .line 635
    iput-object p1, p0, Lcom/c/b/d;->a:Lcom/c/b/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/c/b/b;B)V
    .locals 0

    .prologue
    .line 635
    invoke-direct {p0, p1}, Lcom/c/b/d;-><init>(Lcom/c/b/b;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/c/a/a;)V
    .locals 1

    .prologue
    .line 639
    iget-object v0, p0, Lcom/c/b/d;->a:Lcom/c/b/b;

    invoke-static {v0}, Lcom/c/b/b;->b(Lcom/c/b/b;)Lcom/c/a/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 640
    iget-object v0, p0, Lcom/c/b/d;->a:Lcom/c/b/b;

    invoke-static {v0}, Lcom/c/b/b;->b(Lcom/c/b/b;)Lcom/c/a/b;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/c/a/b;->a(Lcom/c/a/a;)V

    .line 642
    :cond_0
    return-void
.end method

.method public final a(Lcom/c/a/w;)V
    .locals 7

    .prologue
    .line 689
    invoke-virtual {p1}, Lcom/c/a/w;->g()F

    move-result v2

    .line 690
    iget-object v0, p0, Lcom/c/b/d;->a:Lcom/c/b/b;

    invoke-static {v0}, Lcom/c/b/b;->c(Lcom/c/b/b;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/c/b/f;

    .line 691
    iget v1, v0, Lcom/c/b/f;->a:I

    .line 692
    and-int/lit16 v1, v1, 0x1ff

    if-eqz v1, :cond_0

    .line 693
    iget-object v1, p0, Lcom/c/b/d;->a:Lcom/c/b/b;

    invoke-static {v1}, Lcom/c/b/b;->d(Lcom/c/b/b;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 694
    if-eqz v1, :cond_0

    .line 695
    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 698
    :cond_0
    iget-object v3, v0, Lcom/c/b/f;->b:Ljava/util/ArrayList;

    .line 699
    if-eqz v3, :cond_1

    .line 700
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 701
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_1

    .line 702
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/c/b/e;

    .line 703
    iget v5, v0, Lcom/c/b/e;->b:F

    iget v6, v0, Lcom/c/b/e;->c:F

    mul-float/2addr v6, v2

    add-float/2addr v5, v6

    .line 707
    iget-object v6, p0, Lcom/c/b/d;->a:Lcom/c/b/b;

    iget v0, v0, Lcom/c/b/e;->a:I

    invoke-static {v6, v0, v5}, Lcom/c/b/b;->a(Lcom/c/b/b;IF)V

    .line 701
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 717
    :cond_1
    iget-object v0, p0, Lcom/c/b/d;->a:Lcom/c/b/b;

    invoke-static {v0}, Lcom/c/b/b;->d(Lcom/c/b/b;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 718
    if-eqz v0, :cond_2

    .line 719
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 721
    :cond_2
    return-void
.end method

.method public final b(Lcom/c/a/a;)V
    .locals 2

    .prologue
    .line 660
    iget-object v0, p0, Lcom/c/b/d;->a:Lcom/c/b/b;

    invoke-static {v0}, Lcom/c/b/b;->b(Lcom/c/b/b;)Lcom/c/a/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 661
    iget-object v0, p0, Lcom/c/b/d;->a:Lcom/c/b/b;

    invoke-static {v0}, Lcom/c/b/b;->b(Lcom/c/b/b;)Lcom/c/a/b;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/c/a/b;->b(Lcom/c/a/a;)V

    .line 663
    :cond_0
    iget-object v0, p0, Lcom/c/b/d;->a:Lcom/c/b/b;

    invoke-static {v0}, Lcom/c/b/b;->c(Lcom/c/b/b;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 667
    iget-object v0, p0, Lcom/c/b/d;->a:Lcom/c/b/b;

    invoke-static {v0}, Lcom/c/b/b;->c(Lcom/c/b/b;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 668
    iget-object v0, p0, Lcom/c/b/d;->a:Lcom/c/b/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/c/b/b;->a(Lcom/c/b/b;Lcom/c/a/b;)Lcom/c/a/b;

    .line 670
    :cond_1
    return-void
.end method

.method public final c(Lcom/c/a/a;)V
    .locals 1

    .prologue
    .line 646
    iget-object v0, p0, Lcom/c/b/d;->a:Lcom/c/b/b;

    invoke-static {v0}, Lcom/c/b/b;->b(Lcom/c/b/b;)Lcom/c/a/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 647
    iget-object v0, p0, Lcom/c/b/d;->a:Lcom/c/b/b;

    invoke-static {v0}, Lcom/c/b/b;->b(Lcom/c/b/b;)Lcom/c/a/b;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/c/a/b;->c(Lcom/c/a/a;)V

    .line 649
    :cond_0
    return-void
.end method

.method public final d(Lcom/c/a/a;)V
    .locals 1

    .prologue
    .line 653
    iget-object v0, p0, Lcom/c/b/d;->a:Lcom/c/b/b;

    invoke-static {v0}, Lcom/c/b/b;->b(Lcom/c/b/b;)Lcom/c/a/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 654
    iget-object v0, p0, Lcom/c/b/d;->a:Lcom/c/b/b;

    invoke-static {v0}, Lcom/c/b/b;->b(Lcom/c/b/b;)Lcom/c/a/b;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/c/a/b;->d(Lcom/c/a/a;)V

    .line 656
    :cond_0
    return-void
.end method
