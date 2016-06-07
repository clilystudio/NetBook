.class final enum Lcom/integralblue/httpresponsecache/compat/java/util/concurrent/TimeUnit$4;
.super Lcom/integralblue/httpresponsecache/compat/java/util/concurrent/TimeUnit;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/integralblue/httpresponsecache/compat/java/util/concurrent/TimeUnit;-><init>(Ljava/lang/String;ILcom/integralblue/httpresponsecache/compat/java/util/concurrent/TimeUnit$1;)V

    return-void
.end method


# virtual methods
.method public final convert(JLcom/integralblue/httpresponsecache/compat/java/util/concurrent/TimeUnit;)J
    .locals 3

    .prologue
    .line 84
    invoke-virtual {p3, p1, p2}, Lcom/integralblue/httpresponsecache/compat/java/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    return-wide v0
.end method

.method final excessNanos(JJ)I
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x0

    return v0
.end method

.method public final toDays(J)J
    .locals 3

    .prologue
    .line 83
    const-wide/32 v0, 0x15180

    div-long v0, p1, v0

    return-wide v0
.end method

.method public final toHours(J)J
    .locals 3

    .prologue
    .line 82
    const-wide/16 v0, 0xe10

    div-long v0, p1, v0

    return-wide v0
.end method

.method public final toMicros(J)J
    .locals 7

    .prologue
    .line 78
    const-wide/32 v2, 0xf4240

    const-wide v4, 0x8637bd05af6L

    move-wide v0, p1

    invoke-static/range {v0 .. v5}, Lcom/integralblue/httpresponsecache/compat/java/util/concurrent/TimeUnit$4;->x(JJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final toMillis(J)J
    .locals 7

    .prologue
    .line 79
    const-wide/16 v2, 0x3e8

    const-wide v4, 0x20c49ba5e353f7L

    move-wide v0, p1

    invoke-static/range {v0 .. v5}, Lcom/integralblue/httpresponsecache/compat/java/util/concurrent/TimeUnit$4;->x(JJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final toMinutes(J)J
    .locals 3

    .prologue
    .line 81
    const-wide/16 v0, 0x3c

    div-long v0, p1, v0

    return-wide v0
.end method

.method public final toNanos(J)J
    .locals 7

    .prologue
    .line 77
    const-wide/32 v2, 0x3b9aca00

    const-wide v4, 0x225c17d04L

    move-wide v0, p1

    invoke-static/range {v0 .. v5}, Lcom/integralblue/httpresponsecache/compat/java/util/concurrent/TimeUnit$4;->x(JJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final toSeconds(J)J
    .locals 1

    .prologue
    .line 80
    return-wide p1
.end method
