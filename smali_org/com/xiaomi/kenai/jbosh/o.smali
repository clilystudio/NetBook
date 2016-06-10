.class final Lcom/xiaomi/kenai/jbosh/o;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/xiaomi/kenai/jbosh/o;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/xiaomi/kenai/jbosh/o;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/xiaomi/kenai/jbosh/o;->a:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/xiaomi/kenai/jbosh/o;->b:Ljava/util/Map;

    const-string v0, "bad-request"

    const-string v1, "The format of an HTTP header or binding element received from the client is unacceptable (e.g., syntax error)."

    const/16 v2, 0x190

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/xiaomi/kenai/jbosh/o;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Lcom/xiaomi/kenai/jbosh/o;

    const-string v0, "host-gone"

    const-string v1, "The target domain specified in the \'to\' attribute or the target host or port specified in the \'route\' attribute is no longer serviced by the connection manager."

    .line 1000
    invoke-static {v0, v1, v3}, Lcom/xiaomi/kenai/jbosh/o;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Lcom/xiaomi/kenai/jbosh/o;

    .line 0
    const-string v0, "host-unknown"

    const-string v1, "The target domain specified in the \'to\' attribute or the target host or port specified in the \'route\' attribute is unknown to the connection manager."

    .line 2000
    invoke-static {v0, v1, v3}, Lcom/xiaomi/kenai/jbosh/o;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Lcom/xiaomi/kenai/jbosh/o;

    .line 0
    const-string v0, "improper-addressing"

    const-string v1, "The initialization element lacks a \'to\' or \'route\' attribute (or the attribute has no value) but the connection manager requires one."

    .line 3000
    invoke-static {v0, v1, v3}, Lcom/xiaomi/kenai/jbosh/o;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Lcom/xiaomi/kenai/jbosh/o;

    .line 0
    const-string v0, "internal-server-error"

    const-string v1, "The connection manager has experienced an internal error that prevents it from servicing the request."

    .line 4000
    invoke-static {v0, v1, v3}, Lcom/xiaomi/kenai/jbosh/o;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Lcom/xiaomi/kenai/jbosh/o;

    .line 0
    const-string v0, "item-not-found"

    const-string v1, "(1) \'sid\' is not valid, (2) \'stream\' is not valid, (3) \'rid\' is larger than the upper limit of the expected window, (4) connection manager is unable to resend response, (5) \'key\' sequence is invalid."

    const/16 v2, 0x194

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/xiaomi/kenai/jbosh/o;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Lcom/xiaomi/kenai/jbosh/o;

    const-string v0, "other-request"

    const-string v1, "Another request being processed at the same time as this request caused the session to terminate."

    .line 5000
    invoke-static {v0, v1, v3}, Lcom/xiaomi/kenai/jbosh/o;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Lcom/xiaomi/kenai/jbosh/o;

    .line 0
    const-string v0, "policy-violation"

    const-string v1, "The client has broken the session rules (polling too frequently, requesting too frequently, sending too many simultaneous requests)."

    const/16 v2, 0x193

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/xiaomi/kenai/jbosh/o;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Lcom/xiaomi/kenai/jbosh/o;

    const-string v0, "remote-connection-failed"

    const-string v1, "The connection manager was unable to connect to, or unable to connect securely to, or has lost its connection to, the server."

    .line 6000
    invoke-static {v0, v1, v3}, Lcom/xiaomi/kenai/jbosh/o;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Lcom/xiaomi/kenai/jbosh/o;

    .line 0
    const-string v0, "remote-stream-error"

    const-string v1, "Encapsulated transport protocol error."

    .line 7000
    invoke-static {v0, v1, v3}, Lcom/xiaomi/kenai/jbosh/o;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Lcom/xiaomi/kenai/jbosh/o;

    .line 0
    const-string v0, "see-other-uri"

    const-string v1, "The connection manager does not operate at this URI (e.g., the connection manager accepts only SSL or TLS connections at some https: URI rather than the http: URI requested by the client)."

    .line 8000
    invoke-static {v0, v1, v3}, Lcom/xiaomi/kenai/jbosh/o;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Lcom/xiaomi/kenai/jbosh/o;

    .line 0
    const-string v0, "system-shutdown"

    const-string v1, "The connection manager is being shut down. All active HTTP sessions are being terminated. No new sessions can be created."

    .line 9000
    invoke-static {v0, v1, v3}, Lcom/xiaomi/kenai/jbosh/o;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Lcom/xiaomi/kenai/jbosh/o;

    .line 0
    const-string v0, "undefined-condition"

    const-string v1, "Unknown or undefined error condition."

    .line 10000
    invoke-static {v0, v1, v3}, Lcom/xiaomi/kenai/jbosh/o;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Lcom/xiaomi/kenai/jbosh/o;

    .line 0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/kenai/jbosh/o;->c:Ljava/lang/String;

    iput-object p2, p0, Lcom/xiaomi/kenai/jbosh/o;->d:Ljava/lang/String;

    return-void
.end method

.method static a(I)Lcom/xiaomi/kenai/jbosh/o;
    .locals 2

    sget-object v0, Lcom/xiaomi/kenai/jbosh/o;->b:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/kenai/jbosh/o;

    return-object v0
.end method

.method static a(Ljava/lang/String;)Lcom/xiaomi/kenai/jbosh/o;
    .locals 1

    sget-object v0, Lcom/xiaomi/kenai/jbosh/o;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/kenai/jbosh/o;

    return-object v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Lcom/xiaomi/kenai/jbosh/o;
    .locals 3

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "condition may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "message may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sget-object v0, Lcom/xiaomi/kenai/jbosh/o;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Multiple definitions of condition: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Lcom/xiaomi/kenai/jbosh/o;

    invoke-direct {v0, p0, p1}, Lcom/xiaomi/kenai/jbosh/o;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/xiaomi/kenai/jbosh/o;->a:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_4

    sget-object v1, Lcom/xiaomi/kenai/jbosh/o;->b:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Multiple definitions of code: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    sget-object v1, Lcom/xiaomi/kenai/jbosh/o;->b:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    return-object v0
.end method


# virtual methods
.method final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/kenai/jbosh/o;->c:Ljava/lang/String;

    return-object v0
.end method

.method final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/kenai/jbosh/o;->d:Ljava/lang/String;

    return-object v0
.end method
