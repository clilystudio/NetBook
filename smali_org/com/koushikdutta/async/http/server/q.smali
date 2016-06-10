.class public Lcom/koushikdutta/async/http/server/q;
.super Lcom/koushikdutta/async/C;
.source "SourceFile"


# static fields
.field private static synthetic c:Z


# instance fields
.field private a:[B

.field private b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const-class v0, Lcom/koushikdutta/async/http/server/q;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/koushikdutta/async/http/server/q;->c:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/koushikdutta/async/C;-><init>()V

    .line 58
    const/4 v0, 0x2

    iput v0, p0, Lcom/koushikdutta/async/http/server/q;->b:I

    return-void
.end method


# virtual methods
.method public final a(Lcom/koushikdutta/async/y;Lcom/koushikdutta/async/v;)V
    .locals 11

    .prologue
    const/4 v10, -0x1

    const/4 v9, -0x2

    const/4 v8, -0x3

    const/4 v7, -0x4

    const/4 v1, 0x0

    .line 68
    iget v0, p0, Lcom/koushikdutta/async/http/server/q;->b:I

    if-lez v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/q;->a:[B

    array-length v0, v0

    invoke-static {v0}, Lcom/koushikdutta/async/v;->b(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 70
    iget-object v2, p0, Lcom/koushikdutta/async/http/server/q;->a:[B

    iget v3, p0, Lcom/koushikdutta/async/http/server/q;->b:I

    invoke-virtual {v0, v2, v1, v3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 71
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 72
    invoke-virtual {p2, v0}, Lcom/koushikdutta/async/v;->b(Ljava/nio/ByteBuffer;)V

    .line 73
    iput v1, p0, Lcom/koushikdutta/async/http/server/q;->b:I

    .line 77
    :cond_0
    invoke-virtual {p2}, Lcom/koushikdutta/async/v;->c()I

    move-result v0

    new-array v3, v0, [B

    .line 78
    invoke-virtual {p2, v3}, Lcom/koushikdutta/async/v;->a([B)V

    move v0, v1

    move v2, v1

    .line 79
    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_11

    .line 80
    iget v4, p0, Lcom/koushikdutta/async/http/server/q;->b:I

    if-ltz v4, :cond_3

    .line 81
    aget-byte v4, v3, v0

    iget-object v5, p0, Lcom/koushikdutta/async/http/server/q;->a:[B

    iget v6, p0, Lcom/koushikdutta/async/http/server/q;->b:I

    aget-byte v5, v5, v6

    if-ne v4, v5, :cond_2

    .line 82
    iget v4, p0, Lcom/koushikdutta/async/http/server/q;->b:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/koushikdutta/async/http/server/q;->b:I

    .line 83
    iget v4, p0, Lcom/koushikdutta/async/http/server/q;->b:I

    iget-object v5, p0, Lcom/koushikdutta/async/http/server/q;->a:[B

    array-length v5, v5

    if-ne v4, v5, :cond_1

    .line 84
    iput v10, p0, Lcom/koushikdutta/async/http/server/q;->b:I

    .line 79
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 86
    :cond_2
    iget v4, p0, Lcom/koushikdutta/async/http/server/q;->b:I

    if-lez v4, :cond_1

    .line 89
    iget v4, p0, Lcom/koushikdutta/async/http/server/q;->b:I

    sub-int/2addr v0, v4

    .line 90
    iput v1, p0, Lcom/koushikdutta/async/http/server/q;->b:I

    goto :goto_1

    .line 93
    :cond_3
    iget v4, p0, Lcom/koushikdutta/async/http/server/q;->b:I

    if-ne v4, v10, :cond_9

    .line 94
    aget-byte v4, v3, v0

    const/16 v5, 0xd

    if-ne v4, v5, :cond_6

    .line 95
    iput v7, p0, Lcom/koushikdutta/async/http/server/q;->b:I

    .line 96
    sub-int v4, v0, v2

    iget-object v5, p0, Lcom/koushikdutta/async/http/server/q;->a:[B

    array-length v5, v5

    sub-int/2addr v4, v5

    .line 97
    if-nez v2, :cond_4

    if-eqz v4, :cond_5

    .line 98
    :cond_4
    invoke-static {v4}, Lcom/koushikdutta/async/v;->b(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v5, v3, v2, v4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 99
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 100
    new-instance v5, Lcom/koushikdutta/async/v;

    invoke-direct {v5}, Lcom/koushikdutta/async/v;-><init>()V

    .line 101
    invoke-virtual {v5, v4}, Lcom/koushikdutta/async/v;->a(Ljava/nio/ByteBuffer;)V

    .line 102
    invoke-super {p0, p0, v5}, Lcom/koushikdutta/async/C;->a(Lcom/koushikdutta/async/y;Lcom/koushikdutta/async/v;)V

    .line 105
    :cond_5
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/server/q;->l()V

    goto :goto_1

    .line 107
    :cond_6
    aget-byte v4, v3, v0

    const/16 v5, 0x2d

    if-ne v4, v5, :cond_7

    .line 108
    iput v9, p0, Lcom/koushikdutta/async/http/server/q;->b:I

    goto :goto_1

    .line 111
    :cond_7
    new-instance v0, Lcom/koushikdutta/async/http/server/MimeEncodingException;

    const-string v1, "Invalid multipart/form-data. Expected \r or -"

    invoke-direct {v0, v1}, Lcom/koushikdutta/async/http/server/MimeEncodingException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/http/server/q;->a_(Ljava/lang/Exception;)V

    .line 166
    :cond_8
    :goto_2
    return-void

    .line 115
    :cond_9
    iget v4, p0, Lcom/koushikdutta/async/http/server/q;->b:I

    if-ne v4, v9, :cond_b

    .line 116
    aget-byte v4, v3, v0

    const/16 v5, 0x2d

    if-ne v4, v5, :cond_a

    .line 117
    iput v8, p0, Lcom/koushikdutta/async/http/server/q;->b:I

    goto :goto_1

    .line 120
    :cond_a
    new-instance v0, Lcom/koushikdutta/async/http/server/MimeEncodingException;

    const-string v1, "Invalid multipart/form-data. Expected -"

    invoke-direct {v0, v1}, Lcom/koushikdutta/async/http/server/MimeEncodingException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/http/server/q;->a_(Ljava/lang/Exception;)V

    goto :goto_2

    .line 124
    :cond_b
    iget v4, p0, Lcom/koushikdutta/async/http/server/q;->b:I

    if-ne v4, v8, :cond_d

    .line 125
    aget-byte v4, v3, v0

    const/16 v5, 0xd

    if-ne v4, v5, :cond_c

    .line 126
    iput v7, p0, Lcom/koushikdutta/async/http/server/q;->b:I

    .line 127
    sub-int v4, v0, v2

    iget-object v5, p0, Lcom/koushikdutta/async/http/server/q;->a:[B

    array-length v5, v5

    sub-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x2

    invoke-static {v4}, Lcom/koushikdutta/async/v;->b(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    sub-int v5, v0, v2

    iget-object v6, p0, Lcom/koushikdutta/async/http/server/q;->a:[B

    array-length v6, v6

    sub-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x2

    invoke-virtual {v4, v3, v2, v5}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 128
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 129
    new-instance v5, Lcom/koushikdutta/async/v;

    invoke-direct {v5}, Lcom/koushikdutta/async/v;-><init>()V

    .line 130
    invoke-virtual {v5, v4}, Lcom/koushikdutta/async/v;->a(Ljava/nio/ByteBuffer;)V

    .line 131
    invoke-super {p0, p0, v5}, Lcom/koushikdutta/async/C;->a(Lcom/koushikdutta/async/y;Lcom/koushikdutta/async/v;)V

    .line 133
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/server/q;->k()V

    goto/16 :goto_1

    .line 136
    :cond_c
    new-instance v0, Lcom/koushikdutta/async/http/server/MimeEncodingException;

    const-string v1, "Invalid multipart/form-data. Expected \r"

    invoke-direct {v0, v1}, Lcom/koushikdutta/async/http/server/MimeEncodingException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/http/server/q;->a_(Ljava/lang/Exception;)V

    goto :goto_2

    .line 140
    :cond_d
    iget v4, p0, Lcom/koushikdutta/async/http/server/q;->b:I

    if-ne v4, v7, :cond_f

    .line 141
    aget-byte v4, v3, v0

    const/16 v5, 0xa

    if-ne v4, v5, :cond_e

    .line 142
    add-int/lit8 v2, v0, 0x1

    .line 143
    iput v1, p0, Lcom/koushikdutta/async/http/server/q;->b:I

    goto/16 :goto_1

    .line 146
    :cond_e
    new-instance v4, Lcom/koushikdutta/async/http/server/MimeEncodingException;

    const-string v5, "Invalid multipart/form-data. Expected \n"

    invoke-direct {v4, v5}, Lcom/koushikdutta/async/http/server/MimeEncodingException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lcom/koushikdutta/async/http/server/q;->a_(Ljava/lang/Exception;)V

    goto/16 :goto_1

    .line 150
    :cond_f
    sget-boolean v4, Lcom/koushikdutta/async/http/server/q;->c:Z

    if-nez v4, :cond_10

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 151
    :cond_10
    new-instance v4, Lcom/koushikdutta/async/http/server/MimeEncodingException;

    const-string v5, "Invalid multipart/form-data. Unknown state?"

    invoke-direct {v4, v5}, Lcom/koushikdutta/async/http/server/MimeEncodingException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lcom/koushikdutta/async/http/server/q;->a_(Ljava/lang/Exception;)V

    goto/16 :goto_1

    .line 155
    :cond_11
    array-length v0, v3

    if-ge v2, v0, :cond_8

    .line 159
    iget v0, p0, Lcom/koushikdutta/async/http/server/q;->b:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 160
    array-length v1, v3

    sub-int/2addr v1, v2

    sub-int/2addr v1, v0

    invoke-static {v1}, Lcom/koushikdutta/async/v;->b(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    array-length v4, v3

    sub-int/2addr v4, v2

    sub-int v0, v4, v0

    invoke-virtual {v1, v3, v2, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 161
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 162
    new-instance v1, Lcom/koushikdutta/async/v;

    invoke-direct {v1}, Lcom/koushikdutta/async/v;-><init>()V

    .line 163
    invoke-virtual {v1, v0}, Lcom/koushikdutta/async/v;->a(Ljava/nio/ByteBuffer;)V

    .line 164
    invoke-super {p0, p0, v1}, Lcom/koushikdutta/async/C;->a(Lcom/koushikdutta/async/y;Lcom/koushikdutta/async/v;)V

    goto/16 :goto_2
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\r\n--"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/koushikdutta/async/http/server/q;->a:[B

    .line 14
    return-void
.end method

.method protected k()V
    .locals 0

    .prologue
    .line 36
    return-void
.end method

.method protected l()V
    .locals 0

    .prologue
    .line 33
    return-void
.end method
