.class final Lcom/c/b/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/c/a/D;
.implements Lcom/c/a/b;


# instance fields
.field private synthetic a:Lcom/c/b/h;


# direct methods
.method private constructor <init>(Lcom/c/b/h;)V
    .locals 0

    .prologue
    .line 636
    iput-object p1, p0, Lcom/c/b/j;->a:Lcom/c/b/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/c/b/h;B)V
    .locals 0

    .prologue
    .line 636
    invoke-direct {p0, p1}, Lcom/c/b/j;-><init>(Lcom/c/b/h;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/c/a/a;)V
    .locals 1

    .prologue
    .line 640
    iget-object v0, p0, Lcom/c/b/j;->a:Lcom/c/b/h;

    invoke-static {v0}, Lcom/c/b/h;->b(Lcom/c/b/h;)Lcom/c/a/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 641
    iget-object v0, p0, Lcom/c/b/j;->a:Lcom/c/b/h;

    invoke-static {v0}, Lcom/c/b/h;->b(Lcom/c/b/h;)Lcom/c/a/b;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/c/a/b;->a(Lcom/c/a/a;)V

    .line 643
    :cond_0
    return-void
.end method

.method public final a(Lcom/c/a/w;)V
    .locals 7

    .prologue
    .line 690
    invoke-virtual {p1}, Lcom/c/a/w;->g()F

    move-result v2

    .line 691
    iget-object v0, p0, Lcom/c/b/j;->a:Lcom/c/b/h;

    invoke-static {v0}, Lcom/c/b/h;->c(Lcom/c/b/h;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/c/b/l;

    .line 692
    iget v1, v0, Lcom/c/b/l;->a:I

    .line 693
    and-int/lit16 v1, v1, 0x1ff

    if-eqz v1, :cond_0

    .line 694
    iget-object v1, p0, Lcom/c/b/j;->a:Lcom/c/b/h;

    invoke-static {v1}, Lcom/c/b/h;->d(Lcom/c/b/h;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 695
    if-eqz v1, :cond_0

    .line 696
    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 699
    :cond_0
    iget-object v3, v0, Lcom/c/b/l;->b:Ljava/util/ArrayList;

    .line 700
    if-eqz v3, :cond_1

    .line 701
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 702
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_1

    .line 703
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/c/b/k;

    .line 704
    iget v5, v0, Lcom/c/b/k;->b:F

    iget v6, v0, Lcom/c/b/k;->c:F

    mul-float/2addr v6, v2

    add-float/2addr v5, v6

    .line 708
    iget-object v6, p0, Lcom/c/b/j;->a:Lcom/c/b/h;

    iget v0, v0, Lcom/c/b/k;->a:I

    invoke-static {v6, v0, v5}, Lcom/c/b/h;->a(Lcom/c/b/h;IF)V

    .line 702
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 718
    :cond_1
    iget-object v0, p0, Lcom/c/b/j;->a:Lcom/c/b/h;

    invoke-static {v0}, Lcom/c/b/h;->d(Lcom/c/b/h;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 719
    if-eqz v0, :cond_2

    .line 720
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 722
    :cond_2
    return-void
.end method

.method public final b(Lcom/c/a/a;)V
    .locals 2

    .prologue
    .line 661
    iget-object v0, p0, Lcom/c/b/j;->a:Lcom/c/b/h;

    invoke-static {v0}, Lcom/c/b/h;->b(Lcom/c/b/h;)Lcom/c/a/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 662
    iget-object v0, p0, Lcom/c/b/j;->a:Lcom/c/b/h;

    invoke-static {v0}, Lcom/c/b/h;->b(Lcom/c/b/h;)Lcom/c/a/b;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/c/a/b;->b(Lcom/c/a/a;)V

    .line 664
    :cond_0
    iget-object v0, p0, Lcom/c/b/j;->a:Lcom/c/b/h;

    invoke-static {v0}, Lcom/c/b/h;->c(Lcom/c/b/h;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 668
    iget-object v0, p0, Lcom/c/b/j;->a:Lcom/c/b/h;

    invoke-static {v0}, Lcom/c/b/h;->c(Lcom/c/b/h;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 669
    iget-object v0, p0, Lcom/c/b/j;->a:Lcom/c/b/h;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/c/b/h;->a(Lcom/c/b/h;Lcom/c/a/b;)Lcom/c/a/b;

    .line 671
    :cond_1
    return-void
.end method

.method public final c(Lcom/c/a/a;)V
    .locals 1

    .prologue
    .line 647
    iget-object v0, p0, Lcom/c/b/j;->a:Lcom/c/b/h;

    invoke-static {v0}, Lcom/c/b/h;->b(Lcom/c/b/h;)Lcom/c/a/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 648
    iget-object v0, p0, Lcom/c/b/j;->a:Lcom/c/b/h;

    invoke-static {v0}, Lcom/c/b/h;->b(Lcom/c/b/h;)Lcom/c/a/b;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/c/a/b;->c(Lcom/c/a/a;)V

    .line 650
    :cond_0
    return-void
.end method

.method public final d(Lcom/c/a/a;)V
    .locals 1

    .prologue
    .line 654
    iget-object v0, p0, Lcom/c/b/j;->a:Lcom/c/b/h;

    invoke-static {v0}, Lcom/c/b/h;->b(Lcom/c/b/h;)Lcom/c/a/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 655
    iget-object v0, p0, Lcom/c/b/j;->a:Lcom/c/b/h;

    invoke-static {v0}, Lcom/c/b/h;->b(Lcom/c/b/h;)Lcom/c/a/b;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/c/a/b;->d(Lcom/c/a/a;)V

    .line 657
    :cond_0
    return-void
.end method
