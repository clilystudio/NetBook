.class final Lcom/c/a/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/c/a/b;


# instance fields
.field private a:Lcom/c/a/d;

.field private synthetic b:Lcom/c/a/d;


# direct methods
.method constructor <init>(Lcom/c/a/d;Lcom/c/a/d;)V
    .locals 0

    .prologue
    .line 711
    iput-object p1, p0, Lcom/c/a/f;->b:Lcom/c/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 712
    iput-object p2, p0, Lcom/c/a/f;->a:Lcom/c/a/d;

    .line 713
    return-void
.end method


# virtual methods
.method public final a(Lcom/c/a/a;)V
    .locals 0

    .prologue
    .line 770
    return-void
.end method

.method public final b(Lcom/c/a/a;)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 732
    invoke-virtual {p1, p0}, Lcom/c/a/a;->b(Lcom/c/a/b;)V

    .line 733
    iget-object v0, p0, Lcom/c/a/f;->b:Lcom/c/a/d;

    invoke-static {v0}, Lcom/c/a/d;->a(Lcom/c/a/d;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 734
    iget-object v0, p0, Lcom/c/a/f;->a:Lcom/c/a/d;

    invoke-static {v0}, Lcom/c/a/d;->b(Lcom/c/a/d;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/c/a/j;

    .line 735
    iput-boolean v1, v0, Lcom/c/a/j;->f:Z

    .line 736
    iget-object v0, p0, Lcom/c/a/f;->b:Lcom/c/a/d;

    iget-boolean v0, v0, Lcom/c/a/d;->b:Z

    if-nez v0, :cond_2

    .line 739
    iget-object v0, p0, Lcom/c/a/f;->a:Lcom/c/a/d;

    invoke-static {v0}, Lcom/c/a/d;->c(Lcom/c/a/d;)Ljava/util/ArrayList;

    move-result-object v4

    .line 741
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v2, v3

    .line 742
    :goto_0
    if-ge v2, v5, :cond_3

    .line 743
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/c/a/j;

    iget-boolean v0, v0, Lcom/c/a/j;->f:Z

    if-nez v0, :cond_0

    move v0, v3

    .line 748
    :goto_1
    if-eqz v0, :cond_2

    .line 751
    iget-object v0, p0, Lcom/c/a/f;->b:Lcom/c/a/d;

    iget-object v0, v0, Lcom/c/a/d;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 752
    iget-object v0, p0, Lcom/c/a/f;->b:Lcom/c/a/d;

    iget-object v0, v0, Lcom/c/a/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 754
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v2, v3

    .line 755
    :goto_2
    if-ge v2, v4, :cond_1

    .line 756
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/c/a/b;

    iget-object v5, p0, Lcom/c/a/f;->a:Lcom/c/a/d;

    invoke-interface {v1, v5}, Lcom/c/a/b;->b(Lcom/c/a/a;)V

    .line 755
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_2

    .line 742
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 759
    :cond_1
    iget-object v0, p0, Lcom/c/a/f;->a:Lcom/c/a/d;

    invoke-static {v0, v3}, Lcom/c/a/d;->a(Lcom/c/a/d;Z)Z

    .line 762
    :cond_2
    return-void

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public final c(Lcom/c/a/a;)V
    .locals 4

    .prologue
    .line 716
    iget-object v0, p0, Lcom/c/a/f;->b:Lcom/c/a/d;

    iget-boolean v0, v0, Lcom/c/a/d;->b:Z

    if-nez v0, :cond_0

    .line 719
    iget-object v0, p0, Lcom/c/a/f;->b:Lcom/c/a/d;

    invoke-static {v0}, Lcom/c/a/d;->a(Lcom/c/a/d;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 720
    iget-object v0, p0, Lcom/c/a/f;->b:Lcom/c/a/d;

    iget-object v0, v0, Lcom/c/a/d;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 721
    iget-object v0, p0, Lcom/c/a/f;->b:Lcom/c/a/d;

    iget-object v0, v0, Lcom/c/a/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 722
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 723
    iget-object v0, p0, Lcom/c/a/f;->b:Lcom/c/a/d;

    iget-object v0, v0, Lcom/c/a/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/c/a/b;

    iget-object v3, p0, Lcom/c/a/f;->a:Lcom/c/a/d;

    invoke-interface {v0, v3}, Lcom/c/a/b;->c(Lcom/c/a/a;)V

    .line 722
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 728
    :cond_0
    return-void
.end method

.method public final d(Lcom/c/a/a;)V
    .locals 0

    .prologue
    .line 766
    return-void
.end method
