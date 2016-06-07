.class final enum Lcom/integralblue/httpresponsecache/compat/java/util/concurrent/TimeUnit$2;
.super Lcom/integralblue/httpresponsecache/compat/java/util/concurrent/TimeUnit;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/integralblue/httpresponsecache/compat/java/util/concurrent/TimeUnit;-><init>(Ljava/lang/String;ILcom/integralblue/httpresponsecache/compat/java/util/concurrent/TimeUnit$1;)V

    return-void
.end method


# virtual methods
.method public final convert(JLcom/integralblue/httpresponsecache/compat/java/util/concurrent/TimeUnit;)J
    .locals 3

    .prologue
    .line 62
    invoke-virtual {p3, p1, p2}, Lcom/integralblue/httpresponsecache/compat/java/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v0

    return-wide v0
.end method

.method final excessNanos(JJ)I
    .locals 5

    .prologue
    .line 63
    const-wide/16 v0, 0x3e8

    mul-long/2addr v0, p1

    const-wide/32 v2, 0xf4240

    mul-long/2addr v2, p3

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public final toDays(J)J
    .locals 3

    .prologue
    .line 61
    const-wide v0, 0x141dd76000L

    div-long v0, p1, v0

    return-wide v0
.end method

.method public final toHours(J)J
    .locals 3

    .prologue
    .line 60
    const-wide v0, 0xd693a400L

    div-long v0, p1, v0

    return-wide v0
.end method

.method public final toMicros(J)J
    .locals 1

    .prologue
    .line 56
    return-wide p1
.end method

.method public final toMillis(J)J
    .locals 3

    .prologue
    .line 57
    const-wide/16 v0, 0x3e8

    div-long v0, p1, v0

    return-wide v0
.end method

.method public final toMinutes(J)J
    .locals 3

    .prologue
    .line 59
    const-wide/32 v0, 0x3938700

    div-long v0, p1, v0

    return-wide v0
.end method

.method public final toNanos(J)J
    .locals 7

    .prologue
    .line 55
    const-wide/16 v2, 0x3e8

    const-wide v4, 0x20c49ba5e353f7L

    move-wide v0, p1

    invoke-static/range {v0 .. v5}, Lcom/integralblue/httpresponsecache/compat/java/util/concurrent/TimeUnit$2;->x(JJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final toSeconds(J)J
    .locals 3

    .prologue
    .line 58
    const-wide/32 v0, 0xf4240

    div-long v0, p1, v0

    return-wide v0
.end method
