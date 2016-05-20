.class public abstract Lcom/ushaqi/zhuishushenqi/util/W;
.super Lcom/ushaqi/zhuishushenqi/util/al;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/ushaqi/zhuishushenqi/util/al;"
    }
.end annotation


# static fields
.field private static final a:[Ljava/lang/Object;


# instance fields
.field private final b:Landroid/view/LayoutInflater;

.field private final c:I

.field private final d:[I

.field private e:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lcom/ushaqi/zhuishushenqi/util/W;->a:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 2

    .prologue
    .line 35
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300f9

    invoke-direct {p0, v0, v1}, Lcom/ushaqi/zhuishushenqi/util/W;-><init>(Landroid/view/LayoutInflater;I)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/view/LayoutInflater;I)V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/util/al;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/util/W;->b:Landroid/view/LayoutInflater;

    .line 56
    iput p2, p0, Lcom/ushaqi/zhuishushenqi/util/W;->c:I

    .line 58
    sget-object v0, Lcom/ushaqi/zhuishushenqi/util/W;->a:[Ljava/lang/Object;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/W;->e:[Ljava/lang/Object;

    .line 60
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/util/W;->a()[I

    move-result-object v0

    .line 64
    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/W;->d:[I

    .line 65
    return-void
.end method


# virtual methods
.method protected final a(ILandroid/view/View;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/view/View;",
            "TV;)V"
        }
    .end annotation

    .prologue
    .line 149
    invoke-virtual {p0, p2}, Lcom/ushaqi/zhuishushenqi/util/W;->a(Landroid/view/View;)V

    .line 150
    invoke-virtual {p0, p1, p3}, Lcom/ushaqi/zhuishushenqi/util/W;->a(ILjava/lang/Object;)V

    .line 151
    return-void
.end method

.method protected abstract a(ILjava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)V"
        }
    .end annotation
.end method

.method public final a(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 84
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 85
    invoke-interface {p1}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/util/W;->a([Ljava/lang/Object;)V

    .line 89
    :goto_0
    return-void

    .line 87
    :cond_0
    sget-object v0, Lcom/ushaqi/zhuishushenqi/util/W;->a:[Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/util/W;->a([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final a([Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 97
    if-eqz p1, :cond_0

    .line 98
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/util/W;->e:[Ljava/lang/Object;

    .line 102
    :goto_0
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/util/W;->notifyDataSetChanged()V

    .line 103
    return-void

    .line 100
    :cond_0
    sget-object v0, Lcom/ushaqi/zhuishushenqi/util/W;->a:[Ljava/lang/Object;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/W;->e:[Ljava/lang/Object;

    goto :goto_0
.end method

.method protected abstract a()[I
.end method

.method protected final c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 74
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/W;->e:[Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 75
    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/W;->e:[Ljava/lang/Object;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .prologue
    .line 113
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/W;->e:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/W;->e:[Ljava/lang/Object;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 163
    if-nez p2, :cond_0

    .line 164
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/W;->b:Landroid/view/LayoutInflater;

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/util/W;->c:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1138
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/util/W;->d:[I

    invoke-super {p0, v0, v1}, Lcom/ushaqi/zhuishushenqi/util/al;->a(Landroid/view/View;[I)Landroid/view/View;

    move-result-object p2

    .line 166
    :cond_0
    invoke-virtual {p0, p1}, Lcom/ushaqi/zhuishushenqi/util/W;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/ushaqi/zhuishushenqi/util/W;->a(ILandroid/view/View;Ljava/lang/Object;)V

    .line 167
    return-object p2
.end method
