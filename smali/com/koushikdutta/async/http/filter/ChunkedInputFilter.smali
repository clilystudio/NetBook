.class public Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;
.super Lcom/koushikdutta/async/C;
.source "SourceFile"


# static fields
.field private static synthetic d:Z


# instance fields
.field private a:I

.field private b:I

.field private c:Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const-class v0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->d:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 8
    invoke-direct {p0}, Lcom/koushikdutta/async/C;-><init>()V

    .line 9
    iput v0, p0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->a:I

    .line 10
    iput v0, p0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->b:I

    .line 11
    sget-object v0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;->CHUNK_LEN:Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;

    iput-object v0, p0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->c:Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;

    .line 13
    return-void
.end method

.method private a(CC)Z
    .locals 3

    .prologue
    .line 24
    if-eq p1, p2, :cond_0

    .line 25
    new-instance v0, Lcom/koushikdutta/async/http/filter/ChunkedDataException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " was expected, got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/koushikdutta/async/http/filter/ChunkedDataException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->a_(Ljava/lang/Exception;)V

    .line 26
    const/4 v0, 0x0

    .line 28
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/koushikdutta/async/y;Lcom/koushikdutta/async/v;)V
    .locals 7

    .prologue
    const/16 v6, 0xd

    .line 49
    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {p2}, Lcom/koushikdutta/async/v;->c()I

    move-result v0

    if-lez v0, :cond_1

    .line 50
    sget-object v0, Lcom/koushikdutta/async/http/filter/a;->a:[I

    iget-object v1, p0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->c:Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;

    invoke-virtual {v1}, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 52
    :pswitch_0
    invoke-virtual {p2}, Lcom/koushikdutta/async/v;->f()C

    move-result v0

    .line 53
    if-ne v0, v6, :cond_2

    .line 54
    sget-object v0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;->CHUNK_LEN_CR:Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;

    iput-object v0, p0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->c:Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;

    .line 69
    :goto_1
    iget v0, p0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->a:I

    iput v0, p0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->b:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 118
    :catch_0
    move-exception v0

    .line 119
    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->a_(Ljava/lang/Exception;)V

    .line 121
    :cond_1
    :goto_2
    return-void

    .line 57
    :cond_2
    :try_start_1
    iget v1, p0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->a:I

    shl-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->a:I

    .line 58
    const/16 v1, 0x61

    if-lt v0, v1, :cond_3

    const/16 v1, 0x66

    if-gt v0, v1, :cond_3

    .line 59
    iget v1, p0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->a:I

    add-int/lit8 v0, v0, -0x61

    add-int/lit8 v0, v0, 0xa

    add-int/2addr v0, v1

    iput v0, p0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->a:I

    goto :goto_1

    .line 60
    :cond_3
    const/16 v1, 0x30

    if-lt v0, v1, :cond_4

    const/16 v1, 0x39

    if-gt v0, v1, :cond_4

    .line 61
    iget v1, p0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->a:I

    add-int/lit8 v0, v0, -0x30

    add-int/2addr v0, v1

    iput v0, p0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->a:I

    goto :goto_1

    .line 62
    :cond_4
    const/16 v1, 0x41

    if-lt v0, v1, :cond_5

    const/16 v1, 0x46

    if-gt v0, v1, :cond_5

    .line 63
    iget v1, p0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->a:I

    add-int/lit8 v0, v0, -0x41

    add-int/lit8 v0, v0, 0xa

    add-int/2addr v0, v1

    iput v0, p0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->a:I

    goto :goto_1

    .line 65
    :cond_5
    new-instance v1, Lcom/koushikdutta/async/http/filter/ChunkedDataException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "invalid chunk length: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/koushikdutta/async/http/filter/ChunkedDataException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->a_(Ljava/lang/Exception;)V

    goto :goto_2

    .line 72
    :pswitch_1
    invoke-virtual {p2}, Lcom/koushikdutta/async/v;->f()C

    move-result v0

    .line 1032
    const/16 v1, 0xa

    invoke-direct {p0, v0, v1}, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->a(CC)Z

    move-result v0

    .line 72
    if-eqz v0, :cond_1

    .line 74
    sget-object v0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;->CHUNK:Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;

    iput-object v0, p0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->c:Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;

    goto/16 :goto_0

    .line 77
    :pswitch_2
    invoke-virtual {p2}, Lcom/koushikdutta/async/v;->c()I

    move-result v0

    .line 78
    iget v1, p0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->b:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 79
    iget v2, p0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->b:I

    sub-int/2addr v2, v1

    iput v2, p0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->b:I

    .line 80
    iget v2, p0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->b:I

    if-nez v2, :cond_6

    .line 81
    sget-object v2, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;->CHUNK_CR:Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;

    iput-object v2, p0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->c:Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;

    .line 83
    :cond_6
    if-eqz v1, :cond_0

    .line 85
    invoke-virtual {p2, v1}, Lcom/koushikdutta/async/v;->a(I)Lcom/koushikdutta/async/v;

    move-result-object v2

    .line 86
    invoke-virtual {p2}, Lcom/koushikdutta/async/v;->c()I

    move-result v3

    .line 87
    sget-boolean v4, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->d:Z

    if-nez v4, :cond_7

    invoke-virtual {v2}, Lcom/koushikdutta/async/v;->c()I

    move-result v4

    invoke-virtual {p2}, Lcom/koushikdutta/async/v;->c()I

    move-result v5

    add-int/2addr v4, v5

    if-eq v0, v4, :cond_7

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 88
    :cond_7
    sget-boolean v0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->d:Z

    if-nez v0, :cond_8

    invoke-virtual {v2}, Lcom/koushikdutta/async/v;->c()I

    move-result v0

    if-eq v1, v0, :cond_8

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 89
    :cond_8
    invoke-static {p0, v2}, Lcom/koushikdutta/async/Y;->a(Lcom/koushikdutta/async/y;Lcom/koushikdutta/async/v;)V

    .line 90
    sget-boolean v0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->d:Z

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lcom/koushikdutta/async/v;->c()I

    move-result v0

    if-eq v3, v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 93
    :pswitch_3
    invoke-virtual {p2}, Lcom/koushikdutta/async/v;->f()C

    move-result v0

    .line 1036
    const/16 v1, 0xd

    invoke-direct {p0, v0, v1}, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->a(CC)Z

    move-result v0

    .line 93
    if-eqz v0, :cond_1

    .line 95
    sget-object v0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;->CHUNK_CRLF:Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;

    iput-object v0, p0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->c:Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;

    goto/16 :goto_0

    .line 98
    :pswitch_4
    invoke-virtual {p2}, Lcom/koushikdutta/async/v;->f()C

    move-result v0

    .line 2032
    const/16 v1, 0xa

    invoke-direct {p0, v0, v1}, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->a(CC)Z

    move-result v0

    .line 98
    if-eqz v0, :cond_1

    .line 100
    iget v0, p0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->a:I

    if-lez v0, :cond_9

    .line 101
    sget-object v0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;->CHUNK_LEN:Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;

    iput-object v0, p0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->c:Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;

    .line 108
    :goto_3
    const/4 v0, 0x0

    iput v0, p0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->a:I

    goto/16 :goto_0

    .line 105
    :cond_9
    sget-object v0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;->COMPLETE:Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;

    iput-object v0, p0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->c:Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;

    .line 106
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->a_(Ljava/lang/Exception;)V

    goto :goto_3

    .line 111
    :pswitch_5
    sget-boolean v0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->d:Z

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 50
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected final a_(Ljava/lang/Exception;)V
    .locals 2

    .prologue
    .line 41
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->c:Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;

    sget-object v1, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;->COMPLETE:Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;

    if-eq v0, v1, :cond_0

    .line 42
    new-instance p1, Lcom/koushikdutta/async/http/filter/ChunkedDataException;

    const-string v0, "chunked input ended before final chunk"

    invoke-direct {p1, v0}, Lcom/koushikdutta/async/http/filter/ChunkedDataException;-><init>(Ljava/lang/String;)V

    .line 43
    :cond_0
    invoke-super {p0, p1}, Lcom/koushikdutta/async/C;->a_(Ljava/lang/Exception;)V

    .line 44
    return-void
.end method
