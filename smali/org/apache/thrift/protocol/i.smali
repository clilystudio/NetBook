.class public final Lorg/apache/thrift/protocol/i;
.super Ljava/lang/Object;


# static fields
.field private static a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x7fffffff

    sput v0, Lorg/apache/thrift/protocol/i;->a:I

    return-void
.end method

.method public static a(Lorg/apache/thrift/protocol/f;B)V
    .locals 1

    sget v0, Lorg/apache/thrift/protocol/i;->a:I

    invoke-static {p0, p1, v0}, Lorg/apache/thrift/protocol/i;->a(Lorg/apache/thrift/protocol/f;BI)V

    return-void
.end method

.method private static a(Lorg/apache/thrift/protocol/f;BI)V
    .locals 4

    const/4 v0, 0x0

    if-gtz p2, :cond_0

    new-instance v0, Lorg/apache/thrift/e;

    const-string v1, "Maximum skip depth exceeded"

    invoke-direct {v0, v1}, Lorg/apache/thrift/e;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    packed-switch p1, :pswitch_data_0

    :cond_1
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-virtual {p0}, Lorg/apache/thrift/protocol/f;->j()Z

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lorg/apache/thrift/protocol/f;->k()B

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lorg/apache/thrift/protocol/f;->l()S

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0}, Lorg/apache/thrift/protocol/f;->m()I

    goto :goto_0

    :pswitch_5
    invoke-virtual {p0}, Lorg/apache/thrift/protocol/f;->n()J

    goto :goto_0

    :pswitch_6
    invoke-virtual {p0}, Lorg/apache/thrift/protocol/f;->o()D

    goto :goto_0

    :pswitch_7
    invoke-virtual {p0}, Lorg/apache/thrift/protocol/f;->q()Ljava/nio/ByteBuffer;

    goto :goto_0

    :pswitch_8
    invoke-virtual {p0}, Lorg/apache/thrift/protocol/f;->d()Lorg/apache/thrift/protocol/k;

    :goto_1
    invoke-virtual {p0}, Lorg/apache/thrift/protocol/f;->f()Lorg/apache/thrift/protocol/c;

    move-result-object v0

    iget-byte v1, v0, Lorg/apache/thrift/protocol/c;->a:B

    if-eqz v1, :cond_2

    iget-byte v0, v0, Lorg/apache/thrift/protocol/c;->a:B

    add-int/lit8 v1, p2, -0x1

    invoke-static {p0, v0, v1}, Lorg/apache/thrift/protocol/i;->a(Lorg/apache/thrift/protocol/f;BI)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lorg/apache/thrift/protocol/f;->e()V

    goto :goto_0

    :pswitch_9
    invoke-virtual {p0}, Lorg/apache/thrift/protocol/f;->g()Lorg/apache/thrift/protocol/e;

    move-result-object v1

    :goto_2
    iget v2, v1, Lorg/apache/thrift/protocol/e;->c:I

    if-ge v0, v2, :cond_1

    iget-byte v2, v1, Lorg/apache/thrift/protocol/e;->a:B

    add-int/lit8 v3, p2, -0x1

    invoke-static {p0, v2, v3}, Lorg/apache/thrift/protocol/i;->a(Lorg/apache/thrift/protocol/f;BI)V

    iget-byte v2, v1, Lorg/apache/thrift/protocol/e;->b:B

    add-int/lit8 v3, p2, -0x1

    invoke-static {p0, v2, v3}, Lorg/apache/thrift/protocol/i;->a(Lorg/apache/thrift/protocol/f;BI)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :pswitch_a
    invoke-virtual {p0}, Lorg/apache/thrift/protocol/f;->i()Lorg/apache/thrift/protocol/j;

    move-result-object v1

    :goto_3
    iget v2, v1, Lorg/apache/thrift/protocol/j;->b:I

    if-ge v0, v2, :cond_1

    iget-byte v2, v1, Lorg/apache/thrift/protocol/j;->a:B

    add-int/lit8 v3, p2, -0x1

    invoke-static {p0, v2, v3}, Lorg/apache/thrift/protocol/i;->a(Lorg/apache/thrift/protocol/f;BI)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :pswitch_b
    invoke-virtual {p0}, Lorg/apache/thrift/protocol/f;->h()Lorg/apache/thrift/protocol/d;

    move-result-object v1

    :goto_4
    iget v2, v1, Lorg/apache/thrift/protocol/d;->b:I

    if-ge v0, v2, :cond_1

    iget-byte v2, v1, Lorg/apache/thrift/protocol/d;->a:B

    add-int/lit8 v3, p2, -0x1

    invoke-static {p0, v2, v3}, Lorg/apache/thrift/protocol/i;->a(Lorg/apache/thrift/protocol/f;BI)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_6
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method
