.class final Lcom/nostra13/universalimageloader/core/assist/deque/e;
.super Lcom/nostra13/universalimageloader/core/assist/deque/d;
.source "SourceFile"


# instance fields
.field private synthetic a:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;


# direct methods
.method private constructor <init>(Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;)V
    .locals 0

    .prologue
    .line 1119
    iput-object p1, p0, Lcom/nostra13/universalimageloader/core/assist/deque/e;->a:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;

    invoke-direct {p0, p1}, Lcom/nostra13/universalimageloader/core/assist/deque/d;-><init>(Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;B)V
    .locals 0

    .prologue
    .line 1119
    invoke-direct {p0, p1}, Lcom/nostra13/universalimageloader/core/assist/deque/e;-><init>(Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;)V

    return-void
.end method


# virtual methods
.method final a()Lcom/nostra13/universalimageloader/core/assist/deque/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/nostra13/universalimageloader/core/assist/deque/c",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 1120
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/assist/deque/e;->a:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;

    iget-object v0, v0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->last$7f5d0838:Lcom/nostra13/universalimageloader/core/assist/deque/c;

    return-object v0
.end method

.method final a(Lcom/nostra13/universalimageloader/core/assist/deque/c;)Lcom/nostra13/universalimageloader/core/assist/deque/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nostra13/universalimageloader/core/assist/deque/c",
            "<TE;>;)",
            "Lcom/nostra13/universalimageloader/core/assist/deque/c",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 1121
    iget-object v0, p1, Lcom/nostra13/universalimageloader/core/assist/deque/c;->b:Lcom/nostra13/universalimageloader/core/assist/deque/c;

    return-object v0
.end method
