.class public Lcom/activeandroid/widget/ModelAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/activeandroid/Model;",
        ">",
        "Landroid/widget/ArrayAdapter",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 14
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II)V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 21
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 22
    return-void
.end method


# virtual methods
.method public getItemId(I)J
    .locals 2

    .prologue
    .line 48
    invoke-virtual {p0, p1}, Lcom/activeandroid/widget/ModelAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/activeandroid/Model;

    .line 50
    if-eqz v0, :cond_0

    .line 51
    invoke-virtual {v0}, Lcom/activeandroid/Model;->getId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 54
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public setData(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TT;>;)V"
        }
    .end annotation

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/activeandroid/widget/ModelAdapter;->clear()V

    .line 36
    if-eqz p1, :cond_0

    .line 37
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/activeandroid/Model;

    .line 38
    invoke-virtual {p0, v0}, Lcom/activeandroid/widget/ModelAdapter;->add(Ljava/lang/Object;)V

    goto :goto_0

    .line 41
    :cond_0
    return-void
.end method
