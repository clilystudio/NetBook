.class final Landroid/support/v7/app/D;
.super Landroid/support/v4/app/NotificationCompat$BuilderExtender;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 107
    invoke-direct {p0}, Landroid/support/v4/app/NotificationCompat$BuilderExtender;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 107
    invoke-direct {p0}, Landroid/support/v7/app/D;-><init>()V

    return-void
.end method


# virtual methods
.method public final build(Landroid/support/v4/app/NotificationCompat$Builder;Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;)Landroid/app/Notification;
    .locals 1

    .prologue
    .line 112
    invoke-static {p2, p1}, Landroid/support/v7/app/NotificationCompat;->a(Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;Landroid/support/v4/app/NotificationCompat$Builder;)V

    .line 113
    invoke-interface {p2}, Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;->build()Landroid/app/Notification;

    move-result-object v0

    .line 114
    invoke-static {v0, p1}, Landroid/support/v7/app/NotificationCompat;->a(Landroid/app/Notification;Landroid/support/v4/app/NotificationCompat$Builder;)V

    .line 115
    return-object v0
.end method
