.class public abstract enum Lcom/integralblue/httpresponsecache/compat/java/util/concurrent/TimeUnit;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/integralblue/httpresponsecache/compat/java/util/concurrent/TimeUnit;",
        ">;"
    }
.end annotation


# static fields
.field static final C0:J = 0x1L

.field static final C1:J = 0x3e8L

.field static final C2:J = 0xf4240L

.field static final C3:J = 0x3b9aca00L

.field static final C4:J = 0xdf8475800L

.field static final C5:J = 0x34630b8a000L

.field static final C6:J = 0x4e94914f0000L

.field public static final enum DAYS:Lcom/integralblue/httpresponsecache/compat/java/util/concurrent/TimeUnit;

.field public static final enum HOURS:Lcom/integralblue/httpresponsecache/compat/java/util/concurrent/TimeUnit;

.field static final MAX:J = 0x7fffffffffffffffL

.field public static final enum MICROSECONDS:Lcom/integralblue/httpresponsecache/compat/java/util/concurrent/TimeUnit;

.field public static final enum MILLISECONDS:Lcom/integralblue/httpresponsecache/compat/java/util/concurrent/TimeUnit;

.field public static final enum MINUTES:Lcom/integralblue/httpresponsecache/compat/java/util/concurrent/TimeUnit;

.field public static final enum NANOSECONDS:Lcom/integralblue/httpresponsecache/compat/java/util/concurrent/TimeUnit;

.field public static final enum SECONDS:Lcom/integralblue/httpresponsecache/compat/java/util/concurrent/TimeUnit;

.field private static final synthetic a:[Lcom/integralblue/httpresponsecache/compat/java/util/concurrent/TimeUnit;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 43
    new-instance v0, Lcom/integralblue/httpresponsecache/compat/java/util/concurrent/TimeUnit$1;

    const-string v1, "NANOSECONDS"

    invoke-direct {v0, v1, v3}, Lcom/integralblue/httpresponsecache/compat/java/util/concurrent/TimeUnit$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/integralblue/httpresponsecache/compat/java/util/concurrent/TimeUnit;->NANOSECONDS:Lcom/integralblue/httpresponsecache/compat/java/util/concurrent/TimeUnit;

    .line 54
    new-instance v0, Lcom/integralblue/httpresponsecache/compat/java/util/concurrent/TimeUnit$2;

    const-string v1, "MICROSECONDS"

    invoke-direct {v0, v1, v4}, Lcom/integralblue/httpresponsecache/compat/java/util/concurrent/TimeUnit$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/integralblue/httpresponsecache/compat/java/util/concurrent/TimeUnit;->MICROSECONDS:Lcom/integralblue/httpresponsecache/compat/java/util/concurrent/TimeUnit;

    .line 65
    new-instance v0, Lcom/integralblue/httpresponsecache/compat/java/util/concurrent/TimeUnit$3;

    const-string v1, "MILLISECONDS"

    invoke-direct {v0, v1, v5}, Lcom/integralblue/httpresponsecache/compat/java/util/concurrent/TimeUnit$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/integralblue/httpresponsecache/compat/java/util/concurrent/TimeUnit;->MILLISECONDS:Lcom/integralblue/httpresponsecache/compat/java/util/concurrent/TimeUnit;

    .line 76
    new-instance v0, Lcom/integralblue/httpresponsecache/compat/java/util/concurrent/TimeUnit$4;

    const-string v1, "SECONDS"

    invoke-direct {v0, v1, v6}, Lcom/integralblue/httpresponsecache/compat/java/util/concurrent/TimeUnit$4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/integralblue/httpresponsecache/compat/java/util/concurrent/TimeUnit;->SECONDS:Lcom/integralblue/httpresponsecache/compat/java/util/concurrent/TimeUnit;

    .line 87
    new-instance v0, Lcom/integralblue/httpresponsecache/compat/java/util/concurrent/TimeUnit$5;

    const-string v1, "MINUTES"

    invoke-direct {v0, v1, v7}, Lcom/integralblue/httpresponsecache/compat/java/util/concurrent/TimeUnit$5;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/integralblue/httpresponsecache/compat/java/util/concurrent/TimeUnit;->MINUTES:Lcom/integralblue/httpresponsecache/compat/java/util/concurrent/TimeUnit;

    .line 98
    new-instance v0, Lcom/integralblue/httpresponsecache/compat/java/util/concurrent/TimeUnit$6;

    const-string v1, "HOURS"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/integralblue/httpresponsecache/compat/java/util/concurrent/TimeUnit$6;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/integralblue/httpresponsecache/compat/java/util/concurrent/TimeUnit;->HOURS:Lcom/integralblue/httpresponsecache/compat/java/util/concurrent/TimeUnit;

    .line 109
    new-instance v0, Lcom/integralblue/httpresponsecache/compat/java/util/concurrent/TimeUnit$7;

    const-string v1, "DAYS"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/integralblue/httpresponsecache/compat/java/util/concurrent/TimeUnit$7;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/integralblue/httpresponsecache/compat/java/util/concurrent/TimeUnit;->DAYS:Lcom/integralblue/httpresponsecache/compat/java/util/concurrent/TimeUnit;

    .line 42
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/integralblue/httpresponsecache/compat/java/util/concurrent/TimeUnit;

    sget-object v1, Lcom/integralblue/httpresponsecache/compat/java/util/concurrent/TimeUnit;->NANOSECONDS:Lcom/integralblue/httpresponsecache/compat/java/util/concurrent/TimeUnit;

    aput-object v1, v0, v3

    sget-object v1, Lcom/integralblue/httpresponsecache/compat/java/util/concurrent/TimeUnit;->MICROSECONDS:Lcom/integralblue/httpresponsecache/compat/java/util/concurrent/TimeUnit;

    aput-object v1, v0, v4

    sget-object v1, Lcom/integralblue/httpresponsecache/compat/java/util/concurrent/TimeUnit;->MILLISECONDS:Lcom/integralblue/httpresponsecache/compat/java/util/concurrent/TimeUnit;

    aput-object v1, v0, v5

    sget-object v1, Lcom/integralblue/httpresponsecache/compat/java/util/concurrent/TimeUnit;->SECONDS:Lcom/integralblue/httpresponsecache/compat/java/util/concurrent/TimeUnit;

    aput-object v1, v0, v6

    sget-object v1, Lcom/integralblue/httpresponsecache/compat/java/util/concurrent/TimeUnit;->MINUTES:Lcom/integralblue/httpresponsecache/compat/java/util/concurrent/TimeUnit;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/integralblue/httpresponsecache/compat/java/util/concurrent/TimeUnit;->HOURS:Lcom/integralblue/httpresponsecache/compat/java/util/concurrent/TimeUnit;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/integralblue/httpresponsecache/compat/java/util/concurrent/TimeUnit;->DAYS:Lcom/integralblue/httpresponsecache/compat/java/util/concurrent/TimeUnit;

    aput-object v2, v0, v1

    sput-object v0, Lcom/integralblue/httpresponsecache/compat/java/util/concurrent/TimeUnit;->a:[Lcom/integralblue/httpresponsecache/compat/java/util/concurrent/TimeUnit;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/integralblue/httpresponsecache/compat/java/util/concurrent/TimeUnit$1;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/integralblue/httpresponsecache/compat/java/util/concurrent/TimeUnit;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/integralblue/httpresponsecache/compat/java/util/concurrent/TimeUnit;
    .locals 1

    .prologue
    .line 42
    const-class v0, Lcom/integralblue/httpresponsecache/compat/java/util/concurrent/TimeUnit;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/integralblue/httpresponsecache/compat/java/util/concurrent/TimeUnit;

    return-object v0
.end method

.method public static values()[Lcom/integralblue/httpresponsecache/compat/java/util/concurrent/TimeUnit;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/integralblue/httpresponsecache/compat/java/util/concurrent/TimeUnit;->a:[Lcom/integralblue/httpresponsecache/compat/java/util/concurrent/TimeUnit;

    invoke-virtual {v0}, [Lcom/integralblue/httpresponsecache/compat/java/util/concurrent/TimeUnit;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/integralblue/httpresponsecache/compat/java/util/concurrent/TimeUnit;

    return-object v0
.end method

.method static x(JJJ)J
    .locals 2

    .prologue
    .line 137
    cmp-long v0, p0, p4

    if-lez v0, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    .line 139
    :goto_0
    return-wide v0

    .line 138
    :cond_0
    neg-long v0, p4

    cmp-long v0, p0, v0

    if-gez v0, :cond_1

    const-wide/high16 v0, -0x8000000000000000L

    goto :goto_0

    .line 139
    :cond_1
    mul-long v0, p0, p2

    goto :goto_0
.end method


# virtual methods
.method public convert(JLcom/integralblue/httpresponsecache/compat/java/util/concurrent/TimeUnit;)J
    .locals 1

    .prologue
    .line 167
    new-instance v0, Ljava/lang/AbstractMethodError;

    invoke-direct {v0}, Ljava/lang/AbstractMethodError;-><init>()V

    throw v0
.end method

.method abstract excessNanos(JJ)I
.end method

.method public sleep(J)V
    .locals 3

    .prologue
    .line 328
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 329
    invoke-virtual {p0, p1, p2}, Lcom/integralblue/httpresponsecache/compat/java/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    .line 330
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/integralblue/httpresponsecache/compat/java/util/concurrent/TimeUnit;->excessNanos(JJ)I

    move-result v2

    .line 331
    invoke-static {v0, v1, v2}, Ljava/lang/Thread;->sleep(JI)V

    .line 333
    :cond_0
    return-void
.end method

.method public timedJoin(Ljava/lang/Thread;J)V
    .locals 4

    .prologue
    .line 310
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_0

    .line 311
    invoke-virtual {p0, p2, p3}, Lcom/integralblue/httpresponsecache/compat/java/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    .line 312
    invoke-virtual {p0, p2, p3, v0, v1}, Lcom/integralblue/httpresponsecache/compat/java/util/concurrent/TimeUnit;->excessNanos(JJ)I

    move-result v2

    .line 313
    invoke-virtual {p1, v0, v1, v2}, Ljava/lang/Thread;->join(JI)V

    .line 315
    :cond_0
    return-void
.end method

.method public timedWait(Ljava/lang/Object;J)V
    .locals 4

    .prologue
    .line 290
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_0

    .line 291
    invoke-virtual {p0, p2, p3}, Lcom/integralblue/httpresponsecache/compat/java/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    .line 292
    invoke-virtual {p0, p2, p3, v0, v1}, Lcom/integralblue/httpresponsecache/compat/java/util/concurrent/TimeUnit;->excessNanos(JJ)I

    move-result v2

    .line 293
    invoke-virtual {p1, v0, v1, v2}, Ljava/lang/Object;->wait(JI)V

    .line 295
    :cond_0
    return-void
.end method

.method public toDays(J)J
    .locals 1

    .prologue
    .line 252
    new-instance v0, Ljava/lang/AbstractMethodError;

    invoke-direct {v0}, Ljava/lang/AbstractMethodError;-><init>()V

    throw v0
.end method

.method public toHours(J)J
    .locals 1

    .prologue
    .line 241
    new-instance v0, Ljava/lang/AbstractMethodError;

    invoke-direct {v0}, Ljava/lang/AbstractMethodError;-><init>()V

    throw v0
.end method

.method public toMicros(J)J
    .locals 1

    .prologue
    .line 191
    new-instance v0, Ljava/lang/AbstractMethodError;

    invoke-direct {v0}, Ljava/lang/AbstractMethodError;-><init>()V

    throw v0
.end method

.method public toMillis(J)J
    .locals 1

    .prologue
    .line 203
    new-instance v0, Ljava/lang/AbstractMethodError;

    invoke-direct {v0}, Ljava/lang/AbstractMethodError;-><init>()V

    throw v0
.end method

.method public toMinutes(J)J
    .locals 1

    .prologue
    .line 228
    new-instance v0, Ljava/lang/AbstractMethodError;

    invoke-direct {v0}, Ljava/lang/AbstractMethodError;-><init>()V

    throw v0
.end method

.method public toNanos(J)J
    .locals 1

    .prologue
    .line 179
    new-instance v0, Ljava/lang/AbstractMethodError;

    invoke-direct {v0}, Ljava/lang/AbstractMethodError;-><init>()V

    throw v0
.end method

.method public toSeconds(J)J
    .locals 1

    .prologue
    .line 215
    new-instance v0, Ljava/lang/AbstractMethodError;

    invoke-direct {v0}, Ljava/lang/AbstractMethodError;-><init>()V

    throw v0
.end method
