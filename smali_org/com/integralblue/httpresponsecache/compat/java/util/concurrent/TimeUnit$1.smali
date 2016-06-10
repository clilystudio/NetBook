.class final enum Lcom/integralblue/httpresponsecache/compat/java/util/concurrent/TimeUnit$1;
.super Lcom/integralblue/httpresponsecache/compat/java/util/concurrent/TimeUnit;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/integralblue/httpresponsecache/compat/java/util/concurrent/TimeUnit;-><init>(Ljava/lang/String;ILcom/integralblue/httpresponsecache/compat/java/util/concurrent/TimeUnit$1;)V

    return-void
.end method


# virtual methods
.method public final convert(JLcom/integralblue/httpresponsecache/compat/java/util/concurrent/TimeUnit;)J
    .locals 3

    .prologue
    .line 51
    invoke-virtual {p3, p1, p2}, Lcom/integralblue/httpresponsecache/compat/java/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    return-wide v0
.end method

.method final excessNanos(JJ)I
    .locals 3

    .prologue
    .line 52
    const-wide/32 v0, 0xf4240

    mul-long/2addr v0, p3

    sub-long v0, p1, v0

    long-to-int v0, v0

    return v0
.end method

.method public final toDays(J)J
    .locals 3

    .prologue
    .line 50
    const-wide v0, 0x4e94914f0000L

    div-long v0, p1, v0

    return-wide v0
.end method

.method public final toHours(J)J
    .locals 3

    .prologue
    .line 49
    const-wide v0, 0x34630b8a000L

    div-long v0, p1, v0

    return-wide v0
.end method

.method public final toMicros(J)J
    .locals 3

    .prologue
    .line 45
    const-wide/16 v0, 0x3e8

    div-long v0, p1, v0

    return-wide v0
.end method

.method public final toMillis(J)J
    .locals 3

    .prologue
    .line 46
    const-wide/32 v0, 0xf4240

    div-long v0, p1, v0

    return-wide v0
.end method

.method public final toMinutes(J)J
    .locals 3

    .prologue
    .line 48
    const-wide v0, 0xdf8475800L

    div-long v0, p1, v0

    return-wide v0
.end method

.method public final toNanos(J)J
    .locals 1

    .prologue
    .line 44
    return-wide p1
.end method

.method public final toSeconds(J)J
    .locals 3

    .prologue
    .line 47
    const-wide/32 v0, 0x3b9aca00

    div-long v0, p1, v0

    return-wide v0
.end method
