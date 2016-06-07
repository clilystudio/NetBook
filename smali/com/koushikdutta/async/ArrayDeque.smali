.class public Lcom/koushikdutta/async/ArrayDeque;
.super Ljava/util/AbstractCollection;
.source "SourceFile"

# interfaces
.implements Lcom/koushikdutta/async/B;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractCollection",
        "<TE;>;",
        "Lcom/koushikdutta/async/B",
        "<TE;>;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final serialVersionUID:J = 0x207cda2e240da08bL


# instance fields
.field private transient a:[Ljava/lang/Object;

.field private transient b:I

.field private transient c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const-class v0, Lcom/koushikdutta/async/ArrayDeque;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/koushikdutta/async/ArrayDeque;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 162
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    .line 163
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/koushikdutta/async/ArrayDeque;->a:[Ljava/lang/Object;

    .line 164
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 172
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    .line 173
    invoke-direct {p0, p1}, Lcom/koushikdutta/async/ArrayDeque;->a(I)V

    .line 174
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)V"
        }
    .end annotation

    .prologue
    .line 186
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    .line 187
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/koushikdutta/async/ArrayDeque;->a(I)V

    .line 188
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/ArrayDeque;->addAll(Ljava/util/Collection;)Z

    .line 189
    return-void
.end method

.method private a()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 125
    sget-boolean v0, Lcom/koushikdutta/async/ArrayDeque;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/koushikdutta/async/ArrayDeque;->b:I

    iget v1, p0, Lcom/koushikdutta/async/ArrayDeque;->c:I

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 126
    :cond_0
    iget v0, p0, Lcom/koushikdutta/async/ArrayDeque;->b:I

    .line 127
    iget-object v1, p0, Lcom/koushikdutta/async/ArrayDeque;->a:[Ljava/lang/Object;

    array-length v1, v1

    .line 128
    sub-int v2, v1, v0

    .line 129
    shl-int/lit8 v3, v1, 0x1

    .line 130
    if-gez v3, :cond_1

    .line 131
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Sorry, deque too big"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 132
    :cond_1
    new-array v3, v3, [Ljava/lang/Object;

    .line 133
    iget-object v4, p0, Lcom/koushikdutta/async/ArrayDeque;->a:[Ljava/lang/Object;

    invoke-static {v4, v0, v3, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 134
    iget-object v4, p0, Lcom/koushikdutta/async/ArrayDeque;->a:[Ljava/lang/Object;

    invoke-static {v4, v5, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 135
    iput-object v3, p0, Lcom/koushikdutta/async/ArrayDeque;->a:[Ljava/lang/Object;

    .line 136
    iput v5, p0, Lcom/koushikdutta/async/ArrayDeque;->b:I

    .line 137
    iput v1, p0, Lcom/koushikdutta/async/ArrayDeque;->c:I

    .line 138
    return-void
.end method

.method private a(I)V
    .locals 2

    .prologue
    const/16 v0, 0x8

    .line 102
    .line 105
    if-lt p1, v0, :cond_0

    .line 107
    ushr-int/lit8 v0, p1, 0x1

    or-int/2addr v0, p1

    .line 108
    ushr-int/lit8 v1, v0, 0x2

    or-int/2addr v0, v1

    .line 109
    ushr-int/lit8 v1, v0, 0x4

    or-int/2addr v0, v1

    .line 110
    ushr-int/lit8 v1, v0, 0x8

    or-int/2addr v0, v1

    .line 111
    ushr-int/lit8 v1, v0, 0x10

    or-int/2addr v0, v1

    .line 112
    add-int/lit8 v0, v0, 0x1

    .line 114
    if-gez v0, :cond_0

    .line 115
    ushr-int/lit8 v0, v0, 0x1

    .line 117
    :cond_0
    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/koushikdutta/async/ArrayDeque;->a:[Ljava/lang/Object;

    .line 118
    return-void
.end method

.method private a([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 148
    iget v0, p0, Lcom/koushikdutta/async/ArrayDeque;->b:I

    iget v1, p0, Lcom/koushikdutta/async/ArrayDeque;->c:I

    if-ge v0, v1, :cond_1

    .line 149
    iget-object v0, p0, Lcom/koushikdutta/async/ArrayDeque;->a:[Ljava/lang/Object;

    iget v1, p0, Lcom/koushikdutta/async/ArrayDeque;->b:I

    invoke-virtual {p0}, Lcom/koushikdutta/async/ArrayDeque;->size()I

    move-result v2

    invoke-static {v0, v1, p1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 155
    :cond_0
    :goto_0
    return-object p1

    .line 150
    :cond_1
    iget v0, p0, Lcom/koushikdutta/async/ArrayDeque;->b:I

    iget v1, p0, Lcom/koushikdutta/async/ArrayDeque;->c:I

    if-le v0, v1, :cond_0

    .line 151
    iget-object v0, p0, Lcom/koushikdutta/async/ArrayDeque;->a:[Ljava/lang/Object;

    array-length v0, v0

    iget v1, p0, Lcom/koushikdutta/async/ArrayDeque;->b:I

    sub-int/2addr v0, v1

    .line 152
    iget-object v1, p0, Lcom/koushikdutta/async/ArrayDeque;->a:[Ljava/lang/Object;

    iget v2, p0, Lcom/koushikdutta/async/ArrayDeque;->b:I

    invoke-static {v1, v2, p1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 153
    iget-object v1, p0, Lcom/koushikdutta/async/ArrayDeque;->a:[Ljava/lang/Object;

    iget v2, p0, Lcom/koushikdutta/async/ArrayDeque;->c:I

    invoke-static {v1, v3, p1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method static synthetic access$200(Lcom/koushikdutta/async/ArrayDeque;)I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/koushikdutta/async/ArrayDeque;->b:I

    return v0
.end method

.method static synthetic access$300(Lcom/koushikdutta/async/ArrayDeque;)I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/koushikdutta/async/ArrayDeque;->c:I

    return v0
.end method

.method static synthetic access$400(Lcom/koushikdutta/async/ArrayDeque;)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/koushikdutta/async/ArrayDeque;->a:[Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$500(Lcom/koushikdutta/async/ArrayDeque;I)Z
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/koushikdutta/async/ArrayDeque;->b(I)Z

    move-result v0

    return v0
.end method

.method private b(I)Z
    .locals 9

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 512
    .line 1494
    sget-boolean v2, Lcom/koushikdutta/async/ArrayDeque;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/koushikdutta/async/ArrayDeque;->a:[Ljava/lang/Object;

    iget v3, p0, Lcom/koushikdutta/async/ArrayDeque;->c:I

    aget-object v2, v2, v3

    if-eqz v2, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1495
    :cond_0
    sget-boolean v2, Lcom/koushikdutta/async/ArrayDeque;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    iget v2, p0, Lcom/koushikdutta/async/ArrayDeque;->b:I

    iget v3, p0, Lcom/koushikdutta/async/ArrayDeque;->c:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/koushikdutta/async/ArrayDeque;->a:[Ljava/lang/Object;

    iget v3, p0, Lcom/koushikdutta/async/ArrayDeque;->b:I

    aget-object v2, v2, v3

    if-nez v2, :cond_3

    .line 1498
    :cond_1
    sget-boolean v2, Lcom/koushikdutta/async/ArrayDeque;->$assertionsDisabled:Z

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/koushikdutta/async/ArrayDeque;->a:[Ljava/lang/Object;

    iget v3, p0, Lcom/koushikdutta/async/ArrayDeque;->b:I

    add-int/lit8 v3, v3, -0x1

    iget-object v4, p0, Lcom/koushikdutta/async/ArrayDeque;->a:[Ljava/lang/Object;

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    and-int/2addr v3, v4

    aget-object v2, v2, v3

    if-eqz v2, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1495
    :cond_2
    iget-object v2, p0, Lcom/koushikdutta/async/ArrayDeque;->a:[Ljava/lang/Object;

    iget v3, p0, Lcom/koushikdutta/async/ArrayDeque;->b:I

    aget-object v2, v2, v3

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/koushikdutta/async/ArrayDeque;->a:[Ljava/lang/Object;

    iget v3, p0, Lcom/koushikdutta/async/ArrayDeque;->c:I

    add-int/lit8 v3, v3, -0x1

    iget-object v4, p0, Lcom/koushikdutta/async/ArrayDeque;->a:[Ljava/lang/Object;

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    and-int/2addr v3, v4

    aget-object v2, v2, v3

    if-nez v2, :cond_1

    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 513
    :cond_4
    iget-object v2, p0, Lcom/koushikdutta/async/ArrayDeque;->a:[Ljava/lang/Object;

    .line 514
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    .line 515
    iget v4, p0, Lcom/koushikdutta/async/ArrayDeque;->b:I

    .line 516
    iget v5, p0, Lcom/koushikdutta/async/ArrayDeque;->c:I

    .line 517
    sub-int v6, p1, v4

    and-int/2addr v6, v3

    .line 518
    sub-int v7, v5, p1

    and-int/2addr v7, v3

    .line 521
    sub-int v8, v5, v4

    and-int/2addr v8, v3

    if-lt v6, v8, :cond_5

    .line 522
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 525
    :cond_5
    if-ge v6, v7, :cond_7

    .line 526
    if-gt v4, p1, :cond_6

    .line 527
    add-int/lit8 v1, v4, 0x1

    invoke-static {v2, v4, v2, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 533
    :goto_0
    const/4 v1, 0x0

    aput-object v1, v2, v4

    .line 534
    add-int/lit8 v1, v4, 0x1

    and-int/2addr v1, v3

    iput v1, p0, Lcom/koushikdutta/async/ArrayDeque;->b:I

    .line 546
    :goto_1
    return v0

    .line 529
    :cond_6
    invoke-static {v2, v0, v2, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 530
    aget-object v1, v2, v3

    aput-object v1, v2, v0

    .line 531
    add-int/lit8 v1, v4, 0x1

    sub-int v5, v3, v4

    invoke-static {v2, v4, v2, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 537
    :cond_7
    if-ge p1, v5, :cond_8

    .line 538
    add-int/lit8 v0, p1, 0x1

    invoke-static {v2, v0, v2, p1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 539
    add-int/lit8 v0, v5, -0x1

    iput v0, p0, Lcom/koushikdutta/async/ArrayDeque;->c:I

    :goto_2
    move v0, v1

    .line 546
    goto :goto_1

    .line 541
    :cond_8
    add-int/lit8 v4, p1, 0x1

    sub-int v6, v3, p1

    invoke-static {v2, v4, v2, p1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 542
    aget-object v4, v2, v0

    aput-object v4, v2, v3

    .line 543
    invoke-static {v2, v1, v2, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 544
    add-int/lit8 v0, v5, -0x1

    and-int/2addr v0, v3

    iput v0, p0, Lcom/koushikdutta/async/ArrayDeque;->c:I

    goto :goto_2
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 839
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 842
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v1

    .line 843
    invoke-direct {p0, v1}, Lcom/koushikdutta/async/ArrayDeque;->a(I)V

    .line 844
    iput v0, p0, Lcom/koushikdutta/async/ArrayDeque;->b:I

    .line 845
    iput v1, p0, Lcom/koushikdutta/async/ArrayDeque;->c:I

    .line 848
    :goto_0
    if-ge v0, v1, :cond_0

    .line 849
    iget-object v2, p0, Lcom/koushikdutta/async/ArrayDeque;->a:[Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v0

    .line 848
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 850
    :cond_0
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 3

    .prologue
    .line 823
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 826
    invoke-virtual {p0}, Lcom/koushikdutta/async/ArrayDeque;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 829
    iget-object v0, p0, Lcom/koushikdutta/async/ArrayDeque;->a:[Ljava/lang/Object;

    array-length v0, v0

    add-int/lit8 v1, v0, -0x1

    .line 830
    iget v0, p0, Lcom/koushikdutta/async/ArrayDeque;->b:I

    :goto_0
    iget v2, p0, Lcom/koushikdutta/async/ArrayDeque;->c:I

    if-eq v0, v2, :cond_0

    .line 831
    iget-object v2, p0, Lcom/koushikdutta/async/ArrayDeque;->a:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 830
    add-int/lit8 v0, v0, 0x1

    and-int/2addr v0, v1

    goto :goto_0

    .line 832
    :cond_0
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 391
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 392
    const/4 v0, 0x1

    return v0
.end method

.method public addFirst(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 202
    if-nez p1, :cond_0

    .line 203
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "e == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/ArrayDeque;->a:[Ljava/lang/Object;

    iget v1, p0, Lcom/koushikdutta/async/ArrayDeque;->b:I

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lcom/koushikdutta/async/ArrayDeque;->a:[Ljava/lang/Object;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    and-int/2addr v1, v2

    iput v1, p0, Lcom/koushikdutta/async/ArrayDeque;->b:I

    aput-object p1, v0, v1

    .line 205
    iget v0, p0, Lcom/koushikdutta/async/ArrayDeque;->b:I

    iget v1, p0, Lcom/koushikdutta/async/ArrayDeque;->c:I

    if-ne v0, v1, :cond_1

    .line 206
    invoke-direct {p0}, Lcom/koushikdutta/async/ArrayDeque;->a()V

    .line 207
    :cond_1
    return-void
.end method

.method public addLast(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 218
    if-nez p1, :cond_0

    .line 219
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "e == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/ArrayDeque;->a:[Ljava/lang/Object;

    iget v1, p0, Lcom/koushikdutta/async/ArrayDeque;->c:I

    aput-object p1, v0, v1

    .line 221
    iget v0, p0, Lcom/koushikdutta/async/ArrayDeque;->c:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/koushikdutta/async/ArrayDeque;->a:[Ljava/lang/Object;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/koushikdutta/async/ArrayDeque;->c:I

    iget v1, p0, Lcom/koushikdutta/async/ArrayDeque;->b:I

    if-ne v0, v1, :cond_1

    .line 222
    invoke-direct {p0}, Lcom/koushikdutta/async/ArrayDeque;->a()V

    .line 223
    :cond_1
    return-void
.end method

.method public clear()V
    .locals 5

    .prologue
    .line 712
    iget v0, p0, Lcom/koushikdutta/async/ArrayDeque;->b:I

    .line 713
    iget v1, p0, Lcom/koushikdutta/async/ArrayDeque;->c:I

    .line 714
    if-eq v0, v1, :cond_1

    .line 715
    const/4 v2, 0x0

    iput v2, p0, Lcom/koushikdutta/async/ArrayDeque;->c:I

    iput v2, p0, Lcom/koushikdutta/async/ArrayDeque;->b:I

    .line 717
    iget-object v2, p0, Lcom/koushikdutta/async/ArrayDeque;->a:[Ljava/lang/Object;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    .line 719
    :cond_0
    iget-object v3, p0, Lcom/koushikdutta/async/ArrayDeque;->a:[Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v4, v3, v0

    .line 720
    add-int/lit8 v0, v0, 0x1

    and-int/2addr v0, v2

    .line 721
    if-ne v0, v1, :cond_0

    .line 723
    :cond_1
    return-void
.end method

.method public clone()Lcom/koushikdutta/async/ArrayDeque;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/koushikdutta/async/ArrayDeque",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 800
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/async/ArrayDeque;

    .line 801
    iget-object v1, p0, Lcom/koushikdutta/async/ArrayDeque;->a:[Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, v0, Lcom/koushikdutta/async/ArrayDeque;->a:[Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/koushikdutta/async/ArrayDeque;->a:[Ljava/lang/Object;

    array-length v5, v5

    invoke-static {v1, v2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 802
    return-object v0

    .line 805
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/koushikdutta/async/ArrayDeque;->clone()Lcom/koushikdutta/async/ArrayDeque;

    move-result-object v0

    return-object v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 677
    if-nez p1, :cond_0

    move v0, v1

    .line 687
    :goto_0
    return v0

    .line 679
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/ArrayDeque;->a:[Ljava/lang/Object;

    array-length v0, v0

    add-int/lit8 v2, v0, -0x1

    .line 680
    iget v0, p0, Lcom/koushikdutta/async/ArrayDeque;->b:I

    .line 682
    :goto_1
    iget-object v3, p0, Lcom/koushikdutta/async/ArrayDeque;->a:[Ljava/lang/Object;

    aget-object v3, v3, v0

    if-eqz v3, :cond_2

    .line 683
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 684
    const/4 v0, 0x1

    goto :goto_0

    .line 685
    :cond_1
    add-int/lit8 v0, v0, 0x1

    and-int/2addr v0, v2

    goto :goto_1

    :cond_2
    move v0, v1

    .line 687
    goto :goto_0
.end method

.method public descendingIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 583
    new-instance v0, Lcom/koushikdutta/async/c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/koushikdutta/async/c;-><init>(Lcom/koushikdutta/async/ArrayDeque;B)V

    return-object v0
.end method

.method public element()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 448
    invoke-virtual {p0}, Lcom/koushikdutta/async/ArrayDeque;->getFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getFirst()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 294
    iget-object v0, p0, Lcom/koushikdutta/async/ArrayDeque;->a:[Ljava/lang/Object;

    iget v1, p0, Lcom/koushikdutta/async/ArrayDeque;->b:I

    aget-object v0, v0, v1

    .line 295
    if-nez v0, :cond_0

    .line 296
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 297
    :cond_0
    return-object v0
.end method

.method public getLast()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 305
    iget-object v0, p0, Lcom/koushikdutta/async/ArrayDeque;->a:[Ljava/lang/Object;

    iget v1, p0, Lcom/koushikdutta/async/ArrayDeque;->c:I

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lcom/koushikdutta/async/ArrayDeque;->a:[Ljava/lang/Object;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    and-int/2addr v1, v2

    aget-object v0, v0, v1

    .line 306
    if-nez v0, :cond_0

    .line 307
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 308
    :cond_0
    return-object v0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 567
    iget v0, p0, Lcom/koushikdutta/async/ArrayDeque;->b:I

    iget v1, p0, Lcom/koushikdutta/async/ArrayDeque;->c:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 579
    new-instance v0, Lcom/koushikdutta/async/b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/koushikdutta/async/b;-><init>(Lcom/koushikdutta/async/ArrayDeque;B)V

    return-object v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 405
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/ArrayDeque;->offerLast(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public offerFirst(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 233
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 234
    const/4 v0, 0x1

    return v0
.end method

.method public offerLast(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 245
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 246
    const/4 v0, 0x1

    return v0
.end method

.method public peek()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 461
    invoke-virtual {p0}, Lcom/koushikdutta/async/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public peekFirst()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 312
    iget-object v0, p0, Lcom/koushikdutta/async/ArrayDeque;->a:[Ljava/lang/Object;

    iget v1, p0, Lcom/koushikdutta/async/ArrayDeque;->b:I

    aget-object v0, v0, v1

    .line 314
    return-object v0
.end method

.method public peekLast()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 319
    iget-object v0, p0, Lcom/koushikdutta/async/ArrayDeque;->a:[Ljava/lang/Object;

    iget v1, p0, Lcom/koushikdutta/async/ArrayDeque;->c:I

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lcom/koushikdutta/async/ArrayDeque;->a:[Ljava/lang/Object;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    and-int/2addr v1, v2

    aget-object v0, v0, v1

    .line 320
    return-object v0
.end method

.method public poll()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 434
    invoke-virtual {p0}, Lcom/koushikdutta/async/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public pollFirst()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 270
    iget v2, p0, Lcom/koushikdutta/async/ArrayDeque;->b:I

    .line 271
    iget-object v1, p0, Lcom/koushikdutta/async/ArrayDeque;->a:[Ljava/lang/Object;

    aget-object v1, v1, v2

    .line 273
    if-nez v1, :cond_0

    .line 277
    :goto_0
    return-object v0

    .line 275
    :cond_0
    iget-object v3, p0, Lcom/koushikdutta/async/ArrayDeque;->a:[Ljava/lang/Object;

    aput-object v0, v3, v2

    .line 276
    add-int/lit8 v0, v2, 0x1

    iget-object v2, p0, Lcom/koushikdutta/async/ArrayDeque;->a:[Ljava/lang/Object;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    and-int/2addr v0, v2

    iput v0, p0, Lcom/koushikdutta/async/ArrayDeque;->b:I

    move-object v0, v1

    .line 277
    goto :goto_0
.end method

.method public pollLast()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 281
    iget v1, p0, Lcom/koushikdutta/async/ArrayDeque;->c:I

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lcom/koushikdutta/async/ArrayDeque;->a:[Ljava/lang/Object;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    and-int/2addr v2, v1

    .line 282
    iget-object v1, p0, Lcom/koushikdutta/async/ArrayDeque;->a:[Ljava/lang/Object;

    aget-object v1, v1, v2

    .line 283
    if-nez v1, :cond_0

    .line 287
    :goto_0
    return-object v0

    .line 285
    :cond_0
    iget-object v3, p0, Lcom/koushikdutta/async/ArrayDeque;->a:[Ljava/lang/Object;

    aput-object v0, v3, v2

    .line 286
    iput v2, p0, Lcom/koushikdutta/async/ArrayDeque;->c:I

    move-object v0, v1

    .line 287
    goto :goto_0
.end method

.method public pop()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 490
    invoke-virtual {p0}, Lcom/koushikdutta/async/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public push(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 476
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 477
    return-void
.end method

.method public remove()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 420
    invoke-virtual {p0}, Lcom/koushikdutta/async/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 704
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/ArrayDeque;->removeFirstOccurrence(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeFirst()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 253
    invoke-virtual {p0}, Lcom/koushikdutta/async/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    .line 254
    if-nez v0, :cond_0

    .line 255
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 256
    :cond_0
    return-object v0
.end method

.method public removeFirstOccurrence(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 336
    if-nez p1, :cond_0

    move v0, v1

    .line 348
    :goto_0
    return v0

    .line 338
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/ArrayDeque;->a:[Ljava/lang/Object;

    array-length v0, v0

    add-int/lit8 v2, v0, -0x1

    .line 339
    iget v0, p0, Lcom/koushikdutta/async/ArrayDeque;->b:I

    .line 341
    :goto_1
    iget-object v3, p0, Lcom/koushikdutta/async/ArrayDeque;->a:[Ljava/lang/Object;

    aget-object v3, v3, v0

    if-eqz v3, :cond_2

    .line 342
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 343
    invoke-direct {p0, v0}, Lcom/koushikdutta/async/ArrayDeque;->b(I)Z

    .line 344
    const/4 v0, 0x1

    goto :goto_0

    .line 346
    :cond_1
    add-int/lit8 v0, v0, 0x1

    and-int/2addr v0, v2

    goto :goto_1

    :cond_2
    move v0, v1

    .line 348
    goto :goto_0
.end method

.method public removeLast()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 263
    invoke-virtual {p0}, Lcom/koushikdutta/async/ArrayDeque;->pollLast()Ljava/lang/Object;

    move-result-object v0

    .line 264
    if-nez v0, :cond_0

    .line 265
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 266
    :cond_0
    return-object v0
.end method

.method public removeLastOccurrence(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 364
    if-nez p1, :cond_0

    move v0, v1

    .line 376
    :goto_0
    return v0

    .line 366
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/ArrayDeque;->a:[Ljava/lang/Object;

    array-length v0, v0

    add-int/lit8 v2, v0, -0x1

    .line 367
    iget v0, p0, Lcom/koushikdutta/async/ArrayDeque;->c:I

    add-int/lit8 v0, v0, -0x1

    and-int/2addr v0, v2

    .line 369
    :goto_1
    iget-object v3, p0, Lcom/koushikdutta/async/ArrayDeque;->a:[Ljava/lang/Object;

    aget-object v3, v3, v0

    if-eqz v3, :cond_2

    .line 370
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 371
    invoke-direct {p0, v0}, Lcom/koushikdutta/async/ArrayDeque;->b(I)Z

    .line 372
    const/4 v0, 0x1

    goto :goto_0

    .line 374
    :cond_1
    add-int/lit8 v0, v0, -0x1

    and-int/2addr v0, v2

    goto :goto_1

    :cond_2
    move v0, v1

    .line 376
    goto :goto_0
.end method

.method public size()I
    .locals 2

    .prologue
    .line 558
    iget v0, p0, Lcom/koushikdutta/async/ArrayDeque;->c:I

    iget v1, p0, Lcom/koushikdutta/async/ArrayDeque;->b:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/koushikdutta/async/ArrayDeque;->a:[Ljava/lang/Object;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 739
    invoke-virtual {p0}, Lcom/koushikdutta/async/ArrayDeque;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/koushikdutta/async/ArrayDeque;->a([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 780
    invoke-virtual {p0}, Lcom/koushikdutta/async/ArrayDeque;->size()I

    move-result v1

    .line 781
    array-length v0, p1

    if-ge v0, v1, :cond_1

    .line 782
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 784
    :goto_0
    invoke-direct {p0, v0}, Lcom/koushikdutta/async/ArrayDeque;->a([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 785
    array-length v2, v0

    if-le v2, v1, :cond_0

    .line 786
    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 787
    :cond_0
    return-object v0

    :cond_1
    move-object v0, p1

    goto :goto_0
.end method
