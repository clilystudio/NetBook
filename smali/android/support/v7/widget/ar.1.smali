.class public final Landroid/support/v7/widget/ar;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/widget/ay;",
            ">;"
        }
    .end annotation
.end field

.field final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/widget/ay;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic c:Landroid/support/v7/widget/RecyclerView;

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/widget/ay;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/widget/ay;",
            ">;"
        }
    .end annotation
.end field

.field private f:I

.field private g:Landroid/support/v7/widget/aq;

.field private h:Landroid/support/v7/widget/au;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1

    .prologue
    .line 4151
    iput-object p1, p0, Landroid/support/v7/widget/ar;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4152
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/ar;->a:Ljava/util/ArrayList;

    .line 4153
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/ar;->d:Ljava/util/ArrayList;

    .line 4155
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/ar;->b:Ljava/util/ArrayList;

    .line 4157
    iget-object v0, p0, Landroid/support/v7/widget/ar;->a:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/ar;->e:Ljava/util/List;

    .line 4160
    const/4 v0, 0x2

    iput v0, p0, Landroid/support/v7/widget/ar;->f:I

    return-void
.end method

.method private a(IIZ)Landroid/support/v7/widget/ay;
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 4741
    iget-object v0, p0, Landroid/support/v7/widget/ar;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v3, v2

    .line 4744
    :goto_0
    if-ge v3, v4, :cond_3

    .line 4745
    iget-object v0, p0, Landroid/support/v7/widget/ar;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ay;

    .line 4746
    invoke-virtual {v0}, Landroid/support/v7/widget/ay;->f()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v0}, Landroid/support/v7/widget/ay;->c()I

    move-result v5

    if-ne v5, p1, :cond_2

    invoke-virtual {v0}, Landroid/support/v7/widget/ay;->i()Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Landroid/support/v7/widget/ar;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/aw;

    invoke-static {v5}, Landroid/support/v7/widget/aw;->d(Landroid/support/v7/widget/aw;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/widget/ay;->m()Z

    move-result v5

    if-nez v5, :cond_2

    .line 4754
    :cond_0
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ay;->b(I)V

    .line 4784
    :cond_1
    :goto_1
    return-object v0

    .line 4744
    :cond_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 4759
    :cond_3
    if-nez p3, :cond_4

    .line 4760
    iget-object v0, p0, Landroid/support/v7/widget/ar;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, v0, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/q;

    .line 16180
    iget-object v0, v4, Landroid/support/v7/widget/q;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    move v3, v2

    .line 16181
    :goto_2
    if-ge v3, v5, :cond_6

    .line 16182
    iget-object v0, v4, Landroid/support/v7/widget/q;->c:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 16183
    iget-object v6, v4, Landroid/support/v7/widget/q;->a:Landroid/support/v7/widget/s;

    invoke-interface {v6, v0}, Landroid/support/v7/widget/s;->b(Landroid/view/View;)Landroid/support/v7/widget/ay;

    move-result-object v6

    .line 16184
    invoke-virtual {v6}, Landroid/support/v7/widget/ay;->c()I

    move-result v7

    if-ne v7, p1, :cond_5

    invoke-virtual {v6}, Landroid/support/v7/widget/ay;->i()Z

    move-result v6

    if-nez v6, :cond_5

    .line 4761
    :goto_3
    if-eqz v0, :cond_4

    .line 4763
    iget-object v3, p0, Landroid/support/v7/widget/ar;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->d:Landroid/support/v7/widget/ak;

    iget-object v4, p0, Landroid/support/v7/widget/ar;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4, v0}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/view/View;)Landroid/support/v7/widget/ay;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/ak;->c(Landroid/support/v7/widget/ay;)V

    .line 4768
    :cond_4
    iget-object v0, p0, Landroid/support/v7/widget/ar;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 4769
    :goto_4
    if-ge v2, v3, :cond_8

    .line 4770
    iget-object v0, p0, Landroid/support/v7/widget/ar;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ay;

    .line 4773
    invoke-virtual {v0}, Landroid/support/v7/widget/ay;->i()Z

    move-result v4

    if-nez v4, :cond_7

    invoke-virtual {v0}, Landroid/support/v7/widget/ay;->c()I

    move-result v4

    if-ne v4, p1, :cond_7

    .line 4774
    if-nez p3, :cond_1

    .line 4775
    iget-object v1, p0, Landroid/support/v7/widget/ar;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 16181
    :cond_5
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    :cond_6
    move-object v0, v1

    .line 16189
    goto :goto_3

    .line 4769
    :cond_7
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_4

    :cond_8
    move-object v0, v1

    .line 4784
    goto :goto_1
.end method

.method static synthetic a(Landroid/support/v7/widget/ar;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 4151
    iget-object v0, p0, Landroid/support/v7/widget/ar;->d:Ljava/util/ArrayList;

    return-object v0
.end method

.method private a(Landroid/view/ViewGroup;Z)V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 4478
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    .line 4479
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4480
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 4481
    check-cast v0, Landroid/view/ViewGroup;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Landroid/support/v7/widget/ar;->a(Landroid/view/ViewGroup;Z)V

    .line 4478
    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 4484
    :cond_1
    if-nez p2, :cond_2

    .line 4496
    :goto_1
    return-void

    .line 4488
    :cond_2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-ne v0, v3, :cond_3

    .line 4489
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 4490
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1

    .line 4492
    :cond_3
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    .line 4493
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 4494
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1
.end method

.method private c(Landroid/support/v7/widget/ay;)V
    .locals 2

    .prologue
    .line 4627
    iget-object v0, p1, Landroid/support/v7/widget/ay;->a:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V

    .line 13838
    iget-object v0, p0, Landroid/support/v7/widget/ar;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->s(Landroid/support/v7/widget/RecyclerView;)Landroid/support/design/widget/K;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 13839
    iget-object v0, p0, Landroid/support/v7/widget/ar;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->s(Landroid/support/v7/widget/RecyclerView;)Landroid/support/design/widget/K;

    .line 13841
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/ar;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->f(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/ah;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 13842
    iget-object v0, p0, Landroid/support/v7/widget/ar;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->f(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/ah;

    .line 13844
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/ar;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/aw;

    .line 13845
    iget-object v0, p0, Landroid/support/v7/widget/ar;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/aw;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/aw;->a(Landroid/support/v7/widget/ay;)V

    .line 4630
    invoke-virtual {p0}, Landroid/support/v7/widget/ar;->d()Landroid/support/v7/widget/aq;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/aq;->a(Landroid/support/v7/widget/ay;)V

    .line 4631
    return-void
.end method

.method private d(I)Landroid/support/v7/widget/ay;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 4703
    iget-object v0, p0, Landroid/support/v7/widget/ar;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/ar;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    move-object v0, v1

    .line 4728
    :goto_0
    return-object v0

    .line 4707
    :cond_1
    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-ge v2, v3, :cond_3

    .line 4708
    iget-object v0, p0, Landroid/support/v7/widget/ar;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ay;

    .line 4709
    invoke-virtual {v0}, Landroid/support/v7/widget/ay;->f()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v0}, Landroid/support/v7/widget/ay;->c()I

    move-result v4

    if-ne v4, p1, :cond_2

    .line 4710
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ay;->b(I)V

    goto :goto_0

    .line 4707
    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 4715
    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/ar;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->f(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/ah;

    move-object v0, v1

    .line 4728
    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 4173
    iget-object v0, p0, Landroid/support/v7/widget/ar;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4174
    invoke-virtual {p0}, Landroid/support/v7/widget/ar;->c()V

    .line 4175
    return-void
.end method

.method public final a(I)V
    .locals 2

    .prologue
    .line 4183
    iput p1, p0, Landroid/support/v7/widget/ar;->f:I

    .line 4185
    iget-object v0, p0, Landroid/support/v7/widget/ar;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/ar;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, p1, :cond_0

    .line 4186
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/ar;->c(I)V

    .line 4185
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 4188
    :cond_0
    return-void
.end method

.method final a(Landroid/support/v7/widget/aq;)V
    .locals 2

    .prologue
    .line 4932
    iget-object v0, p0, Landroid/support/v7/widget/ar;->g:Landroid/support/v7/widget/aq;

    if-eqz v0, :cond_0

    .line 4933
    iget-object v0, p0, Landroid/support/v7/widget/ar;->g:Landroid/support/v7/widget/aq;

    invoke-virtual {v0}, Landroid/support/v7/widget/aq;->b()V

    .line 4935
    :cond_0
    iput-object p1, p0, Landroid/support/v7/widget/ar;->g:Landroid/support/v7/widget/aq;

    .line 4936
    if-eqz p1, :cond_1

    .line 4937
    iget-object v0, p0, Landroid/support/v7/widget/ar;->g:Landroid/support/v7/widget/aq;

    iget-object v1, p0, Landroid/support/v7/widget/ar;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->a()Landroid/support/v7/widget/ah;

    invoke-virtual {v0}, Landroid/support/v7/widget/aq;->a()V

    .line 4939
    :cond_1
    return-void
.end method

.method final a(Landroid/support/v7/widget/au;)V
    .locals 0

    .prologue
    .line 4928
    iput-object p1, p0, Landroid/support/v7/widget/ar;->h:Landroid/support/v7/widget/au;

    .line 4929
    return-void
.end method

.method final a(Landroid/support/v7/widget/ay;)V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 4569
    invoke-virtual {p1}, Landroid/support/v7/widget/ay;->d()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p1, Landroid/support/v7/widget/ay;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 4570
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Scrapped or attached views may not be recycled. isScrap:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/support/v7/widget/ay;->d()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " isAttached:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/support/v7/widget/ay;->a:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_1

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    move v0, v1

    goto :goto_0

    .line 4576
    :cond_2
    invoke-virtual {p1}, Landroid/support/v7/widget/ay;->n()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4577
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Tmp detached view should be removed from RecyclerView before it can be recycled: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4581
    :cond_3
    invoke-virtual {p1}, Landroid/support/v7/widget/ay;->b()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 4582
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Trying to recycle an ignored view holder. You should first call stopIgnoringView(view) before calling recycle."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4586
    :cond_4
    invoke-static {p1}, Landroid/support/v7/widget/ay;->a(Landroid/support/v7/widget/ay;)Z

    move-result v2

    .line 4588
    iget-object v3, p0, Landroid/support/v7/widget/ar;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->f(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/ah;

    move-result-object v3

    if-eqz v3, :cond_5

    if-eqz v2, :cond_5

    iget-object v2, p0, Landroid/support/v7/widget/ar;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v2}, Landroid/support/v7/widget/RecyclerView;->f(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/ah;

    .line 4597
    :cond_5
    invoke-virtual {p1}, Landroid/support/v7/widget/ay;->p()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 4598
    const/16 v2, 0x4e

    invoke-virtual {p1, v2}, Landroid/support/v7/widget/ay;->a(I)Z

    move-result v2

    if-nez v2, :cond_7

    .line 4601
    iget-object v2, p0, Landroid/support/v7/widget/ar;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 4602
    iget v3, p0, Landroid/support/v7/widget/ar;->f:I

    if-ne v2, v3, :cond_6

    if-lez v2, :cond_6

    .line 4603
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/ar;->c(I)V

    .line 4605
    :cond_6
    iget v3, p0, Landroid/support/v7/widget/ar;->f:I

    if-ge v2, v3, :cond_7

    .line 4606
    iget-object v1, p0, Landroid/support/v7/widget/ar;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v1, v0

    .line 4610
    :cond_7
    if-nez v1, :cond_8

    .line 4611
    invoke-direct {p0, p1}, Landroid/support/v7/widget/ar;->c(Landroid/support/v7/widget/ay;)V

    .line 4620
    :cond_8
    iget-object v0, p0, Landroid/support/v7/widget/ar;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/aw;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/aw;->a(Landroid/support/v7/widget/ay;)V

    .line 4624
    return-void
.end method

.method public final a(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 4511
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Landroid/support/v7/widget/ay;

    move-result-object v0

    .line 4512
    invoke-virtual {v0}, Landroid/support/v7/widget/ay;->n()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4513
    iget-object v1, p0, Landroid/support/v7/widget/ar;->c:Landroid/support/v7/widget/RecyclerView;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/support/v7/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 4515
    :cond_0
    invoke-virtual {v0}, Landroid/support/v7/widget/ay;->d()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4516
    invoke-virtual {v0}, Landroid/support/v7/widget/ay;->e()V

    .line 4520
    :cond_1
    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/ar;->a(Landroid/support/v7/widget/ay;)V

    .line 4521
    return-void

    .line 4517
    :cond_2
    invoke-virtual {v0}, Landroid/support/v7/widget/ay;->f()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4518
    invoke-virtual {v0}, Landroid/support/v7/widget/ay;->g()V

    goto :goto_0
.end method

.method public final b(I)Landroid/view/View;
    .locals 8

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 4326
    .line 8330
    if-ltz p1, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/ar;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/aw;

    invoke-virtual {v0}, Landroid/support/v7/widget/aw;->d()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 8331
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid item position "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "). Item count:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/widget/ar;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/aw;

    invoke-virtual {v2}, Landroid/support/v7/widget/aw;->d()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8337
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/ar;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/aw;

    invoke-virtual {v0}, Landroid/support/v7/widget/aw;->a()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 8338
    invoke-direct {p0, p1}, Landroid/support/v7/widget/ar;->d(I)Landroid/support/v7/widget/ay;

    move-result-object v4

    .line 8339
    if-eqz v4, :cond_3

    move v0, v1

    :goto_0
    move-object v7, v4

    move v4, v0

    move-object v0, v7

    .line 8342
    :goto_1
    if-nez v0, :cond_1a

    .line 8343
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0, v2}, Landroid/support/v7/widget/ar;->a(IIZ)Landroid/support/v7/widget/ay;

    move-result-object v0

    .line 8344
    if-eqz v0, :cond_1a

    .line 9210
    invoke-virtual {v0}, Landroid/support/v7/widget/ay;->m()Z

    move-result v5

    if-nez v5, :cond_8

    .line 9213
    iget v5, v0, Landroid/support/v7/widget/ay;->b:I

    if-ltz v5, :cond_2

    iget v5, v0, Landroid/support/v7/widget/ay;->b:I

    iget-object v6, p0, Landroid/support/v7/widget/ar;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v6}, Landroid/support/v7/widget/RecyclerView;->f(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/ah;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v7/widget/ah;->a()I

    move-result v6

    if-lt v5, v6, :cond_4

    .line 9214
    :cond_2
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Inconsistency detected. Invalid view holder adapter position"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    move v0, v2

    .line 8339
    goto :goto_0

    .line 9217
    :cond_4
    iget-object v5, p0, Landroid/support/v7/widget/ar;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/aw;

    invoke-virtual {v5}, Landroid/support/v7/widget/aw;->a()Z

    move-result v5

    if-nez v5, :cond_7

    .line 9219
    iget-object v5, p0, Landroid/support/v7/widget/ar;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v5}, Landroid/support/v7/widget/RecyclerView;->f(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/ah;

    move-result-object v5

    iget v6, v0, Landroid/support/v7/widget/ay;->b:I

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/ah;->a(I)I

    move-result v5

    .line 10170
    iget v6, v0, Landroid/support/v7/widget/ay;->e:I

    .line 9220
    if-eq v5, v6, :cond_7

    move v5, v2

    .line 8345
    :goto_2
    if-nez v5, :cond_a

    .line 8350
    const/4 v5, 0x4

    invoke-virtual {v0, v5}, Landroid/support/v7/widget/ay;->b(I)V

    .line 8351
    invoke-virtual {v0}, Landroid/support/v7/widget/ay;->d()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 8352
    iget-object v5, p0, Landroid/support/v7/widget/ar;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v6, v0, Landroid/support/v7/widget/ay;->a:Landroid/view/View;

    invoke-virtual {v5, v6, v2}, Landroid/support/v7/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 8353
    invoke-virtual {v0}, Landroid/support/v7/widget/ay;->e()V

    .line 8357
    :cond_5
    :goto_3
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/ar;->a(Landroid/support/v7/widget/ay;)V

    move-object v0, v3

    move v5, v4

    .line 8365
    :goto_4
    if-nez v0, :cond_19

    .line 8366
    iget-object v3, p0, Landroid/support/v7/widget/ar;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->b:Landroid/support/v7/widget/n;

    invoke-virtual {v3, p1}, Landroid/support/v7/widget/n;->a(I)I

    move-result v3

    .line 8367
    if-ltz v3, :cond_6

    iget-object v4, p0, Landroid/support/v7/widget/ar;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v4}, Landroid/support/v7/widget/RecyclerView;->f(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/ah;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v7/widget/ah;->a()I

    move-result v4

    if-lt v3, v4, :cond_b

    .line 8368
    :cond_6
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Inconsistency detected. Invalid item position "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "(offset:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ").state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/widget/ar;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/aw;

    invoke-virtual {v2}, Landroid/support/v7/widget/aw;->d()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9224
    :cond_7
    iget-object v5, p0, Landroid/support/v7/widget/ar;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v5}, Landroid/support/v7/widget/RecyclerView;->f(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/ah;

    :cond_8
    move v5, v1

    .line 9227
    goto :goto_2

    .line 8354
    :cond_9
    invoke-virtual {v0}, Landroid/support/v7/widget/ay;->f()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 8355
    invoke-virtual {v0}, Landroid/support/v7/widget/ay;->g()V

    goto :goto_3

    :cond_a
    move v5, v1

    .line 8361
    goto :goto_4

    .line 8373
    :cond_b
    iget-object v4, p0, Landroid/support/v7/widget/ar;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v4}, Landroid/support/v7/widget/RecyclerView;->f(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/ah;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/support/v7/widget/ah;->a(I)I

    move-result v4

    .line 8375
    iget-object v3, p0, Landroid/support/v7/widget/ar;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->f(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/ah;

    .line 8383
    if-nez v0, :cond_d

    iget-object v3, p0, Landroid/support/v7/widget/ar;->h:Landroid/support/v7/widget/au;

    if-eqz v3, :cond_d

    .line 8386
    iget-object v3, p0, Landroid/support/v7/widget/ar;->h:Landroid/support/v7/widget/au;

    invoke-virtual {v3}, Landroid/support/v7/widget/au;->a()Landroid/view/View;

    move-result-object v3

    .line 8388
    if-eqz v3, :cond_d

    .line 8389
    iget-object v0, p0, Landroid/support/v7/widget/ar;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/view/View;)Landroid/support/v7/widget/ay;

    move-result-object v0

    .line 8390
    if-nez v0, :cond_c

    .line 8391
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "getViewForPositionAndType returned a view which does not have a ViewHolder"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8393
    :cond_c
    invoke-virtual {v0}, Landroid/support/v7/widget/ay;->b()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 8394
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "getViewForPositionAndType returned a view that is ignored. You must call stopIgnoring before returning this view."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8400
    :cond_d
    if-nez v0, :cond_f

    .line 8407
    invoke-virtual {p0}, Landroid/support/v7/widget/ar;->d()Landroid/support/v7/widget/aq;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/aq;->a(I)Landroid/support/v7/widget/ay;

    move-result-object v3

    .line 8408
    if-eqz v3, :cond_e

    .line 8409
    invoke-virtual {v3}, Landroid/support/v7/widget/ay;->o()V

    .line 8410
    invoke-static {}, Landroid/support/v7/widget/RecyclerView;->i()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 11472
    iget-object v0, v3, Landroid/support/v7/widget/ay;->a:Landroid/view/View;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_e

    .line 11473
    iget-object v0, v3, Landroid/support/v7/widget/ay;->a:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0, v0, v2}, Landroid/support/v7/widget/ar;->a(Landroid/view/ViewGroup;Z)V

    :cond_e
    move-object v0, v3

    .line 8415
    :cond_f
    if-nez v0, :cond_19

    .line 8416
    iget-object v0, p0, Landroid/support/v7/widget/ar;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->f(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/ah;

    move-result-object v0

    iget-object v3, p0, Landroid/support/v7/widget/ar;->c:Landroid/support/v7/widget/RecyclerView;

    .line 12115
    const-string v6, "RV CreateView"

    invoke-static {v6}, Landroid/support/v4/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 12116
    invoke-virtual {v0, v3, v4}, Landroid/support/v7/widget/ah;->a(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/ay;

    move-result-object v0

    .line 12117
    iput v4, v0, Landroid/support/v7/widget/ay;->e:I

    .line 12118
    invoke-static {}, Landroid/support/v4/os/TraceCompat;->endSection()V

    move-object v3, v0

    .line 8423
    :goto_5
    iget-object v0, p0, Landroid/support/v7/widget/ar;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/aw;

    invoke-virtual {v0}, Landroid/support/v7/widget/aw;->a()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {v3}, Landroid/support/v7/widget/ay;->l()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 8425
    iput p1, v3, Landroid/support/v7/widget/ay;->f:I

    move v4, v2

    .line 8441
    :goto_6
    iget-object v0, v3, Landroid/support/v7/widget/ay;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 8443
    if-nez v0, :cond_15

    .line 8444
    iget-object v0, p0, Landroid/support/v7/widget/ar;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ap;

    .line 8445
    iget-object v6, v3, Landroid/support/v7/widget/ay;->a:Landroid/view/View;

    invoke-virtual {v6, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 8452
    :goto_7
    iput-object v3, v0, Landroid/support/v7/widget/ap;->a:Landroid/support/v7/widget/ay;

    .line 8453
    if-eqz v5, :cond_17

    if-eqz v4, :cond_17

    :goto_8
    iput-boolean v1, v0, Landroid/support/v7/widget/ap;->d:Z

    .line 8454
    iget-object v0, v3, Landroid/support/v7/widget/ay;->a:Landroid/view/View;

    .line 4326
    return-object v0

    .line 8426
    :cond_10
    invoke-virtual {v3}, Landroid/support/v7/widget/ay;->l()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {v3}, Landroid/support/v7/widget/ay;->j()Z

    move-result v0

    if-nez v0, :cond_11

    invoke-virtual {v3}, Landroid/support/v7/widget/ay;->i()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 8431
    :cond_11
    iget-object v0, p0, Landroid/support/v7/widget/ar;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->b:Landroid/support/v7/widget/n;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/n;->a(I)I

    move-result v0

    .line 8433
    iget-object v4, p0, Landroid/support/v7/widget/ar;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v4}, Landroid/support/v7/widget/RecyclerView;->f(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/ah;

    move-result-object v4

    invoke-virtual {v4, v3, v0}, Landroid/support/v7/widget/ah;->b(Landroid/support/v7/widget/ay;I)V

    .line 8434
    iget-object v0, v3, Landroid/support/v7/widget/ay;->a:Landroid/view/View;

    .line 12458
    iget-object v4, p0, Landroid/support/v7/widget/ar;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v4}, Landroid/support/v7/widget/RecyclerView;->q(Landroid/support/v7/widget/RecyclerView;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v4

    if-eqz v4, :cond_13

    iget-object v4, p0, Landroid/support/v7/widget/ar;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v4}, Landroid/support/v7/widget/RecyclerView;->q(Landroid/support/v7/widget/RecyclerView;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_13

    .line 12459
    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getImportantForAccessibility(Landroid/view/View;)I

    move-result v4

    if-nez v4, :cond_12

    .line 12461
    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 12464
    :cond_12
    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->hasAccessibilityDelegate(Landroid/view/View;)Z

    move-result v4

    if-nez v4, :cond_13

    .line 12465
    iget-object v4, p0, Landroid/support/v7/widget/ar;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v4}, Landroid/support/v7/widget/RecyclerView;->r(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerViewAccessibilityDelegate;

    move-result-object v4

    .line 13076
    iget-object v4, v4, Landroid/support/v7/widget/RecyclerViewAccessibilityDelegate;->b:Landroid/support/v4/view/AccessibilityDelegateCompat;

    .line 12465
    invoke-static {v0, v4}, Landroid/support/v4/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V

    .line 8436
    :cond_13
    iget-object v0, p0, Landroid/support/v7/widget/ar;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/aw;

    invoke-virtual {v0}, Landroid/support/v7/widget/aw;->a()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 8437
    iput p1, v3, Landroid/support/v7/widget/ay;->f:I

    :cond_14
    move v4, v1

    goto :goto_6

    .line 8446
    :cond_15
    iget-object v6, p0, Landroid/support/v7/widget/ar;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v6, v0}, Landroid/support/v7/widget/RecyclerView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v6

    if-nez v6, :cond_16

    .line 8447
    iget-object v6, p0, Landroid/support/v7/widget/ar;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v6, v0}, Landroid/support/v7/widget/RecyclerView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ap;

    .line 8448
    iget-object v6, v3, Landroid/support/v7/widget/ay;->a:Landroid/view/View;

    invoke-virtual {v6, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_7

    .line 8450
    :cond_16
    check-cast v0, Landroid/support/v7/widget/ap;

    goto/16 :goto_7

    :cond_17
    move v1, v2

    .line 8453
    goto/16 :goto_8

    :cond_18
    move v4, v2

    goto/16 :goto_6

    :cond_19
    move-object v3, v0

    goto/16 :goto_5

    :cond_1a
    move v5, v4

    goto/16 :goto_4

    :cond_1b
    move-object v0, v3

    move v4, v2

    goto/16 :goto_1
.end method

.method public final b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/widget/ay;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4196
    iget-object v0, p0, Landroid/support/v7/widget/ar;->e:Ljava/util/List;

    return-object v0
.end method

.method final b(Landroid/support/v7/widget/ay;)V
    .locals 1

    .prologue
    .line 4679
    invoke-virtual {p1}, Landroid/support/v7/widget/ay;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/ar;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->h(Landroid/support/v7/widget/RecyclerView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/ar;->d:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 4680
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/ar;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4684
    :goto_0
    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/support/v7/widget/ay;->a(Landroid/support/v7/widget/ay;Landroid/support/v7/widget/ar;)Landroid/support/v7/widget/ar;

    .line 4685
    invoke-virtual {p1}, Landroid/support/v7/widget/ay;->g()V

    .line 4686
    return-void

    .line 4682
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/ar;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method final b(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 4639
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Landroid/support/v7/widget/ay;

    move-result-object v0

    .line 4640
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v7/widget/ay;->a(Landroid/support/v7/widget/ay;Landroid/support/v7/widget/ar;)Landroid/support/v7/widget/ar;

    .line 4641
    invoke-virtual {v0}, Landroid/support/v7/widget/ay;->g()V

    .line 4642
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/ar;->a(Landroid/support/v7/widget/ay;)V

    .line 4643
    return-void
.end method

.method final c()V
    .locals 1

    .prologue
    .line 4533
    iget-object v0, p0, Landroid/support/v7/widget/ar;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4534
    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 4535
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/ar;->c(I)V

    .line 4534
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 4537
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/ar;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4538
    return-void
.end method

.method final c(I)V
    .locals 1

    .prologue
    .line 4555
    iget-object v0, p0, Landroid/support/v7/widget/ar;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ay;

    .line 4559
    invoke-direct {p0, v0}, Landroid/support/v7/widget/ar;->c(Landroid/support/v7/widget/ay;)V

    .line 4560
    iget-object v0, p0, Landroid/support/v7/widget/ar;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 4561
    return-void
.end method

.method final c(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 4655
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Landroid/support/v7/widget/ay;

    move-result-object v0

    .line 4656
    invoke-virtual {v0, p0}, Landroid/support/v7/widget/ay;->a(Landroid/support/v7/widget/ar;)V

    .line 4657
    invoke-virtual {v0}, Landroid/support/v7/widget/ay;->k()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/ar;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v1}, Landroid/support/v7/widget/RecyclerView;->h(Landroid/support/v7/widget/RecyclerView;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 4658
    :cond_0
    invoke-virtual {v0}, Landroid/support/v7/widget/ay;->i()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/support/v7/widget/ay;->m()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/ar;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->f(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/ah;

    .line 4659
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Called scrap view with an invalid view. Invalid views cannot be reused from scrap, they should rebound from recycler pool."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4663
    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/ar;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4670
    :goto_0
    return-void

    .line 4665
    :cond_2
    iget-object v1, p0, Landroid/support/v7/widget/ar;->d:Ljava/util/ArrayList;

    if-nez v1, :cond_3

    .line 4666
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/support/v7/widget/ar;->d:Ljava/util/ArrayList;

    .line 4668
    :cond_3
    iget-object v1, p0, Landroid/support/v7/widget/ar;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method final d()Landroid/support/v7/widget/aq;
    .locals 1

    .prologue
    .line 4942
    iget-object v0, p0, Landroid/support/v7/widget/ar;->g:Landroid/support/v7/widget/aq;

    if-nez v0, :cond_0

    .line 4943
    new-instance v0, Landroid/support/v7/widget/aq;

    invoke-direct {v0}, Landroid/support/v7/widget/aq;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/ar;->g:Landroid/support/v7/widget/aq;

    .line 4945
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/ar;->g:Landroid/support/v7/widget/aq;

    return-object v0
.end method

.method final e()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 4993
    iget-object v0, p0, Landroid/support/v7/widget/ar;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v2, v1

    .line 4994
    :goto_0
    if-ge v2, v3, :cond_0

    .line 4995
    iget-object v0, p0, Landroid/support/v7/widget/ar;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ay;

    .line 4996
    invoke-virtual {v0}, Landroid/support/v7/widget/ay;->a()V

    .line 4994
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 4998
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/ar;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v2, v1

    .line 4999
    :goto_1
    if-ge v2, v3, :cond_1

    .line 5000
    iget-object v0, p0, Landroid/support/v7/widget/ar;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ay;

    invoke-virtual {v0}, Landroid/support/v7/widget/ay;->a()V

    .line 4999
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 5002
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/ar;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 5003
    iget-object v0, p0, Landroid/support/v7/widget/ar;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 5004
    :goto_2
    if-ge v1, v2, :cond_2

    .line 5005
    iget-object v0, p0, Landroid/support/v7/widget/ar;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ay;

    invoke-virtual {v0}, Landroid/support/v7/widget/ay;->a()V

    .line 5004
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 5008
    :cond_2
    return-void
.end method
