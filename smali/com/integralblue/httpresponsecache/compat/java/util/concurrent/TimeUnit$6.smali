.class final enum Lcom/integralblue/httpresponsecache/compat/java/util/concurrent/TimeUnit$6;
.super Lcom/integralblue/httpresponsecache/compat/java/util/concurrent/TimeUnit;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/integralblue/httpresponsecache/compat/java/util/concurrent/TimeUnit;-><init>(Ljava/lang/String;ILcom/integralblue/httpresponsecache/compat/java/util/concurrent/TimeUnit$1;)V

    return-void
.end method


# virtual methods
.method public final convert(JLcom/integralblue/httpresponsecache/compat/java/util/concurrent/TimeUnit;)J
    .locals 3

    .prologue
    .line 106
    invoke-virtual {p3, p1, p2}, Lcom/integralblue/httpresponsecache/compat/java/util/concurrent/TimeUnit;->toHours(J)J

    move-result-wide v0

    return-wide v0
.end method

.method final excessNanos(JJ)I
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x0

    return v0
.end method

.method public final toDays(J)J
    .locals 3

    .prologue
    .line 105
    const-wide/16 v0, 0x18

    div-long v0, p1, v0

    return-wide v0
.end method

.method public final toHours(J)J
    .locals 1

    .prologue
    .line 104
    return-wide p1
.end method

.method public final toMicros(J)J
    .locals 7

    .prologue
    .line 100
    const-wide v2, 0xd693a400L

    const-wide v4, 0x98b5bf2cL

    move-wide v0, p1

    invoke-static/range {v0 .. v5}, Lcom/integralblue/httpresponsecache/compat/java/util/concurrent/TimeUnit$6;->x(JJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final toMillis(J)J
    .locals 7

    .prologue
    .line 101
    const-wide/32 v2, 0x36ee80

    const-wide v4, 0x25485f2c3efL

    move-wide v0, p1

    invoke-static/range {v0 .. v5}, Lcom/integralblue/httpresponsecache/compat/java/util/concurrent/TimeUnit$6;->x(JJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final toMinutes(J)J
    .locals 7

    .prologue
    .line 103
    const-wide/16 v2, 0x3c

    const-wide v4, 0x222222222222222L

    move-wide v0, p1

    invoke-static/range {v0 .. v5}, Lcom/integralblue/httpresponsecache/compat/java/util/concurrent/TimeUnit$6;->x(JJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final toNanos(J)J
    .locals 7

    .prologue
    .line 99
    const-wide v2, 0x34630b8a000L

    const-wide/32 v4, 0x2717ff

    move-wide v0, p1

    invoke-static/range {v0 .. v5}, Lcom/integralblue/httpresponsecache/compat/java/util/concurrent/TimeUnit$6;->x(JJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final toSeconds(J)J
    .locals 7

    .prologue
    .line 102
    const-wide/16 v2, 0xe10

    const-wide v4, 0x91a2b3c4d5e6fL

    move-wide v0, p1

    invoke-static/range {v0 .. v5}, Lcom/integralblue/httpresponsecache/compat/java/util/concurrent/TimeUnit$6;->x(JJJ)J

    move-result-wide v0

    return-wide v0
.end method
