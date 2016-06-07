.class final Lbutterknife/ImmutableViewList;
.super Ljava/util/AbstractList;
.source "SourceFile"

# interfaces
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        ">",
        "Ljava/util/AbstractList",
        "<TT;>;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# instance fields
.field private final views:[Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>([Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 15
    iput-object p1, p0, Lbutterknife/ImmutableViewList;->views:[Landroid/view/View;

    .line 16
    return-void
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 27
    iget-object v2, p0, Lbutterknife/ImmutableViewList;->views:[Landroid/view/View;

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 28
    if-ne v4, p1, :cond_1

    .line 29
    const/4 v0, 0x1

    .line 32
    :cond_0
    return v0

    .line 27
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public final get(I)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 19
    iget-object v0, p0, Lbutterknife/ImmutableViewList;->views:[Landroid/view/View;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public final bridge synthetic get(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0, p1}, Lbutterknife/ImmutableViewList;->get(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lbutterknife/ImmutableViewList;->views:[Landroid/view/View;

    array-length v0, v0

    return v0
.end method
