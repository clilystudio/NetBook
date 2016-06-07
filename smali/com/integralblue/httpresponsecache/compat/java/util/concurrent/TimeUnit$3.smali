.class final enum Lcom/integralblue/httpresponsecache/compat/java/util/concurrent/TimeUnit$3;
.super Lcom/integralblue/httpresponsecache/compat/java/util/concurrent/TimeUnit;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/integralblue/httpresponsecache/compat/java/util/concurrent/TimeUnit;-><init>(Ljava/lang/String;ILcom/integralblue/httpresponsecache/compat/java/util/concurrent/TimeUnit$1;)V

    return-void
.end method


# virtual methods
.method public final convert(JLcom/integralblue/httpresponsecache/compat/java/util/concurrent/TimeUnit;)J
    .locals 3

    .prologue
    .line 73
    invoke-virtual {p3, p1, p2}, Lcom/integralblue/httpresponsecache/compat/java/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    return-wide v0
.end method

.method final excessNanos(JJ)I
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x0

    return v0
.end method

.method public final toDays(J)J
    .locals 3

    .prologue
    .line 72
    const-wide/32 v0, 0x5265c00

    div-long v0, p1, v0

    return-wide v0
.end method

.method public final toHours(J)J
    .locals 3

    .prologue
    .line 71
    const-wide/32 v0, 0x36ee80

    div-long v0, p1, v0

    return-wide v0
.end method

.method public final toMicros(J)J
    .locals 7

    .prologue
    .line 67
    const-wide/16 v2, 0x3e8

    const-wide v4, 0x20c49ba5e353f7L

    move-wide v0, p1

    invoke-static/range {v0 .. v5}, Lcom/integralblue/httpresponsecache/compat/java/util/concurrent/TimeUnit$3;->x(JJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final toMillis(J)J
    .locals 1

    .prologue
    .line 68
    return-wide p1
.end method

.method public final toMinutes(J)J
    .locals 3

    .prologue
    .line 70
    const-wide/32 v0, 0xea60

    div-long v0, p1, v0

    return-wide v0
.end method

.method public final toNanos(J)J
    .locals 7

    .prologue
    .line 66
    const-wide/32 v2, 0xf4240

    const-wide v4, 0x8637bd05af6L

    move-wide v0, p1

    invoke-static/range {v0 .. v5}, Lcom/integralblue/httpresponsecache/compat/java/util/concurrent/TimeUnit$3;->x(JJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final toSeconds(J)J
    .locals 3

    .prologue
    .line 69
    const-wide/16 v0, 0x3e8

    div-long v0, p1, v0

    return-wide v0
.end method
