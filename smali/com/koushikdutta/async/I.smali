.class public final Lcom/koushikdutta/async/I;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/koushikdutta/async/a/b;


# instance fields
.field private a:Lcom/koushikdutta/async/y;

.field private b:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/koushikdutta/async/U;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/nio/ByteOrder;

.field private e:Lcom/koushikdutta/async/v;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 338
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/koushikdutta/async/y;)V
    .locals 2

    .prologue
    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    new-instance v0, Lcom/koushikdutta/async/J;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/koushikdutta/async/J;-><init>(Lcom/koushikdutta/async/I;I)V

    .line 182
    new-instance v0, Lcom/koushikdutta/async/K;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/koushikdutta/async/K;-><init>(Lcom/koushikdutta/async/I;I)V

    .line 190
    new-instance v0, Lcom/koushikdutta/async/L;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/koushikdutta/async/L;-><init>(Lcom/koushikdutta/async/I;I)V

    .line 198
    new-instance v0, Lcom/koushikdutta/async/M;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Lcom/koushikdutta/async/M;-><init>(Lcom/koushikdutta/async/I;I)V

    .line 206
    new-instance v0, Lcom/koushikdutta/async/N;

    const/16 v1, 0x8

    invoke-direct {v0, p0, v1}, Lcom/koushikdutta/async/N;-><init>(Lcom/koushikdutta/async/I;I)V

    .line 214
    new-instance v0, Lcom/koushikdutta/async/O;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/O;-><init>(Lcom/koushikdutta/async/I;)V

    .line 221
    new-instance v0, Lcom/koushikdutta/async/P;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/P;-><init>(Lcom/koushikdutta/async/I;)V

    .line 228
    new-instance v0, Lcom/koushikdutta/async/Q;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/Q;-><init>(Lcom/koushikdutta/async/I;)V

    .line 236
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/I;->b:Ljava/util/LinkedList;

    .line 237
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/I;->c:Ljava/util/ArrayList;

    .line 238
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v0, p0, Lcom/koushikdutta/async/I;->d:Ljava/nio/ByteOrder;

    .line 321
    new-instance v0, Lcom/koushikdutta/async/v;

    invoke-direct {v0}, Lcom/koushikdutta/async/v;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/I;->e:Lcom/koushikdutta/async/v;

    .line 245
    iput-object p1, p0, Lcom/koushikdutta/async/I;->a:Lcom/koushikdutta/async/y;

    .line 246
    iget-object v0, p0, Lcom/koushikdutta/async/I;->a:Lcom/koushikdutta/async/y;

    invoke-interface {v0, p0}, Lcom/koushikdutta/async/y;->a(Lcom/koushikdutta/async/a/b;)V

    .line 247
    return-void
.end method

.method static synthetic a(Lcom/koushikdutta/async/I;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/koushikdutta/async/I;->c:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public final a(BLcom/koushikdutta/async/a/b;)Lcom/koushikdutta/async/I;
    .locals 3

    .prologue
    .line 265
    iget-object v0, p0, Lcom/koushikdutta/async/I;->b:Ljava/util/LinkedList;

    new-instance v1, Lcom/koushikdutta/async/T;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p2}, Lcom/koushikdutta/async/T;-><init>(BLcom/koushikdutta/async/a/b;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 266
    return-object p0
.end method

.method public final a(ILcom/koushikdutta/async/S;)Lcom/koushikdutta/async/I;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/koushikdutta/async/S",
            "<[B>;)",
            "Lcom/koushikdutta/async/I;"
        }
    .end annotation

    .prologue
    .line 255
    iget-object v0, p0, Lcom/koushikdutta/async/I;->b:Ljava/util/LinkedList;

    new-instance v1, Lcom/koushikdutta/async/R;

    invoke-direct {v1, p1, p2}, Lcom/koushikdutta/async/R;-><init>(ILcom/koushikdutta/async/S;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 256
    return-object p0
.end method

.method public final a(Lcom/koushikdutta/async/y;Lcom/koushikdutta/async/v;)V
    .locals 2

    .prologue
    .line 324
    iget-object v0, p0, Lcom/koushikdutta/async/I;->e:Lcom/koushikdutta/async/v;

    invoke-virtual {p2, v0}, Lcom/koushikdutta/async/v;->a(Lcom/koushikdutta/async/v;)V

    .line 325
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/koushikdutta/async/I;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/koushikdutta/async/I;->e:Lcom/koushikdutta/async/v;

    invoke-virtual {v0}, Lcom/koushikdutta/async/v;->c()I

    move-result v1

    iget-object v0, p0, Lcom/koushikdutta/async/I;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/async/U;

    iget v0, v0, Lcom/koushikdutta/async/U;->a:I

    if-lt v1, v0, :cond_1

    .line 326
    iget-object v0, p0, Lcom/koushikdutta/async/I;->e:Lcom/koushikdutta/async/v;

    iget-object v1, p0, Lcom/koushikdutta/async/I;->d:Ljava/nio/ByteOrder;

    .line 1027
    iput-object v1, v0, Lcom/koushikdutta/async/v;->b:Ljava/nio/ByteOrder;

    .line 327
    iget-object v0, p0, Lcom/koushikdutta/async/I;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/async/U;

    iget-object v1, p0, Lcom/koushikdutta/async/I;->e:Lcom/koushikdutta/async/v;

    invoke-virtual {v0, p1, v1}, Lcom/koushikdutta/async/U;->a(Lcom/koushikdutta/async/y;Lcom/koushikdutta/async/v;)Lcom/koushikdutta/async/U;

    move-result-object v0

    .line 328
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/koushikdutta/async/I;->b:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto :goto_0

    .line 330
    :cond_1
    iget-object v0, p0, Lcom/koushikdutta/async/I;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 331
    iget-object v0, p0, Lcom/koushikdutta/async/I;->e:Lcom/koushikdutta/async/v;

    invoke-virtual {v0, p2}, Lcom/koushikdutta/async/v;->a(Lcom/koushikdutta/async/v;)V

    .line 332
    :cond_2
    return-void
.end method
