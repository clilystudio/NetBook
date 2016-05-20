.class public abstract Lcom/ushaqi/zhuishushenqi/util/al;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# instance fields
.field private a:Lcom/ushaqi/zhuishushenqi/util/ar;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 19
    new-instance v0, Lcom/ushaqi/zhuishushenqi/util/ar;

    invoke-direct {v0}, Lcom/ushaqi/zhuishushenqi/util/ar;-><init>()V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/al;->a:Lcom/ushaqi/zhuishushenqi/util/ar;

    return-void
.end method


# virtual methods
.method protected final a(IZ)Landroid/view/View;
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 193
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/al;->a:Lcom/ushaqi/zhuishushenqi/util/ar;

    .line 3116
    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/util/ar;->a:[Landroid/view/View;

    aget-object v0, v0, p1

    .line 4030
    if-eqz v0, :cond_0

    .line 4031
    if-eqz p2, :cond_1

    .line 4032
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v2, v1, :cond_0

    .line 4033
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 193
    :cond_0
    :goto_0
    return-object v0

    .line 4035
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 4036
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method protected final a(Landroid/view/View;[I)Landroid/view/View;
    .locals 4

    .prologue
    .line 31
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/util/al;->a:Lcom/ushaqi/zhuishushenqi/util/ar;

    .line 1036
    array-length v0, p2

    new-array v2, v0, [Landroid/view/View;

    .line 1037
    const/4 v0, 0x0

    :goto_0
    array-length v3, p2

    if-ge v0, v3, :cond_0

    .line 1038
    aget v3, p2, v0

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v2, v0

    .line 1037
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1040
    :cond_0
    invoke-virtual {p1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1042
    iput-object v2, v1, Lcom/ushaqi/zhuishushenqi/util/ar;->a:[Landroid/view/View;

    .line 31
    return-object p1
.end method

.method protected final a(ILjava/lang/CharSequence;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/al;->a:Lcom/ushaqi/zhuishushenqi/util/ar;

    .line 2073
    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/util/ar;->a:[Landroid/view/View;

    aget-object v0, v0, p1

    check-cast v0, Landroid/widget/TextView;

    .line 1140
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    return-object v0
.end method

.method protected final a(ILjava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 170
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/al;->a:Lcom/ushaqi/zhuishushenqi/util/ar;

    .line 2194
    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/util/ar;->a:[Landroid/view/View;

    aget-object v0, v0, p1

    .line 170
    return-object v0
.end method

.method protected final a(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 40
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/util/al;->a:Lcom/ushaqi/zhuishushenqi/util/ar;

    .line 1063
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/view/View;

    .line 1053
    iput-object v0, v1, Lcom/ushaqi/zhuishushenqi/util/ar;->a:[Landroid/view/View;

    .line 41
    return-void
.end method
