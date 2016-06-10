.class final Lcom/nostra13/universalimageloader/core/assist/deque/f;
.super Lcom/nostra13/universalimageloader/core/assist/deque/d;
.source "SourceFile"


# instance fields
.field private synthetic a:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;


# direct methods
.method private constructor <init>(Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;)V
    .locals 0

    .prologue
    .line 1113
    iput-object p1, p0, Lcom/nostra13/universalimageloader/core/assist/deque/f;->a:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;

    invoke-direct {p0, p1}, Lcom/nostra13/universalimageloader/core/assist/deque/d;-><init>(Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;B)V
    .locals 0

    .prologue
    .line 1113
    invoke-direct {p0, p1}, Lcom/nostra13/universalimageloader/core/assist/deque/f;-><init>(Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;)V

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
    .line 1114
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/assist/deque/f;->a:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;

    iget-object v0, v0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->first$7f5d0838:Lcom/nostra13/universalimageloader/core/assist/deque/c;

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
    .line 1115
    iget-object v0, p1, Lcom/nostra13/universalimageloader/core/assist/deque/c;->c:Lcom/nostra13/universalimageloader/core/assist/deque/c;

    return-object v0
.end method
