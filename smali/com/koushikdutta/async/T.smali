.class final Lcom/koushikdutta/async/T;
.super Lcom/koushikdutta/async/U;
.source "SourceFile"


# instance fields
.field private b:B

.field private c:Lcom/koushikdutta/async/a/b;


# direct methods
.method public constructor <init>(BLcom/koushikdutta/async/a/b;)V
    .locals 1

    .prologue
    .line 114
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/koushikdutta/async/U;-><init>(I)V

    .line 115
    iput-byte p1, p0, Lcom/koushikdutta/async/T;->b:B

    .line 116
    iput-object p2, p0, Lcom/koushikdutta/async/T;->c:Lcom/koushikdutta/async/a/b;

    .line 117
    return-void
.end method


# virtual methods
.method public final a(Lcom/koushikdutta/async/y;Lcom/koushikdutta/async/v;)Lcom/koushikdutta/async/U;
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 121
    .line 122
    new-instance v5, Lcom/koushikdutta/async/v;

    invoke-direct {v5}, Lcom/koushikdutta/async/v;-><init>()V

    move v0, v1

    .line 1329
    :goto_0
    iget-object v2, p2, Lcom/koushikdutta/async/v;->a:Lcom/koushikdutta/async/ArrayDeque;

    invoke-virtual {v2}, Lcom/koushikdutta/async/ArrayDeque;->size()I

    move-result v2

    .line 123
    if-lez v2, :cond_3

    .line 124
    invoke-virtual {p2}, Lcom/koushikdutta/async/v;->k()Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 125
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    move v2, v3

    .line 127
    :goto_1
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    if-lez v4, :cond_2

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    iget-byte v4, p0, Lcom/koushikdutta/async/T;->b:B

    if-ne v0, v4, :cond_0

    move v4, v1

    :goto_2
    if-nez v4, :cond_1

    .line 128
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v0, v4

    goto :goto_1

    :cond_0
    move v4, v3

    .line 127
    goto :goto_2

    :cond_1
    move v0, v4

    .line 130
    :cond_2
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    .line 131
    if-eqz v0, :cond_5

    .line 132
    invoke-virtual {p2, v6}, Lcom/koushikdutta/async/v;->b(Ljava/nio/ByteBuffer;)V

    .line 133
    invoke-virtual {p2, v5, v2}, Lcom/koushikdutta/async/v;->a(Lcom/koushikdutta/async/v;I)V

    .line 135
    invoke-virtual {p2}, Lcom/koushikdutta/async/v;->h()B

    .line 142
    :cond_3
    iget-object v1, p0, Lcom/koushikdutta/async/T;->c:Lcom/koushikdutta/async/a/b;

    invoke-interface {v1, p1, v5}, Lcom/koushikdutta/async/a/b;->a(Lcom/koushikdutta/async/y;Lcom/koushikdutta/async/v;)V

    .line 144
    if-eqz v0, :cond_4

    .line 145
    const/4 p0, 0x0

    .line 147
    :cond_4
    return-object p0

    .line 138
    :cond_5
    invoke-virtual {v5, v6}, Lcom/koushikdutta/async/v;->a(Ljava/nio/ByteBuffer;)V

    goto :goto_0
.end method
