variable "medialive_channels" {
  description = <<EOT
Map of medialive_channels, attributes below
Required:
    - channel_class
    - name
    - destinations (block):
        - id (required)
        - media_package_settings (optional, block):
            - channel_id (required)
        - multiplex_settings (optional, block):
            - multiplex_id (required)
            - program_name (required)
        - settings (optional, block):
            - password_param (optional)
            - stream_name (optional)
            - url (optional)
            - username (optional)
    - encoder_settings (block):
        - audio_descriptions (optional, block):
            - audio_normalization_settings (optional, block):
                - algorithm (optional)
                - algorithm_control (optional)
                - target_lkfs (optional)
            - audio_selector_name (required)
            - audio_type (optional)
            - audio_type_control (optional)
            - audio_watermark_settings (optional, block):
                - nielsen_watermarks_settings (optional, block):
                    - nielsen_cbet_settings (optional, block):
                        - cbet_check_digit_string (required)
                        - cbet_stepaside (required)
                        - csid (required)
                    - nielsen_distribution_type (optional)
                    - nielsen_naes_ii_nw_settings (optional, block):
                        - check_digit_string (required)
                        - sid (required)
            - codec_settings (optional, block):
                - aac_settings (optional, block):
                    - bitrate (optional)
                    - coding_mode (optional)
                    - input_type (optional)
                    - profile (optional)
                    - rate_control_mode (optional)
                    - raw_format (optional)
                    - sample_rate (optional)
                    - spec (optional)
                    - vbr_quality (optional)
                - ac3_settings (optional, block):
                    - bitrate (optional)
                    - bitstream_mode (optional)
                    - coding_mode (optional)
                    - dialnorm (optional)
                    - drc_profile (optional)
                    - lfe_filter (optional)
                    - metadata_control (optional)
                - eac3_atmos_settings (optional, block):
                    - bitrate (optional)
                    - coding_mode (optional)
                    - dialnorm (optional)
                    - drc_line (optional)
                    - drc_rf (optional)
                    - height_trim (optional)
                    - surround_trim (optional)
                - eac3_settings (optional, block):
                    - attenuation_control (optional)
                    - bitrate (optional)
                    - bitstream_mode (optional)
                    - coding_mode (optional)
                    - dc_filter (optional)
                    - dialnorm (optional)
                    - drc_line (optional)
                    - drc_rf (optional)
                    - lfe_control (optional)
                    - lfe_filter (optional)
                    - lo_ro_center_mix_level (optional)
                    - lo_ro_surround_mix_level (optional)
                    - lt_rt_center_mix_level (optional)
                    - lt_rt_surround_mix_level (optional)
                    - metadata_control (optional)
                    - passthrough_control (optional)
                    - phase_control (optional)
                    - stereo_downmix (optional)
                    - surround_ex_mode (optional)
                    - surround_mode (optional)
                - mp2_settings (optional, block):
                    - bitrate (optional)
                    - coding_mode (optional)
                    - sample_rate (optional)
                - pass_through_settings (optional, block):
                - wav_settings (optional, block):
                    - bit_depth (optional)
                    - coding_mode (optional)
                    - sample_rate (optional)
            - language_code (optional)
            - language_code_control (optional)
            - name (required)
            - remix_settings (optional, block):
                - channel_mappings (required, block):
                    - input_channel_levels (required, block):
                        - gain (required)
                        - input_channel (required)
                    - output_channel (required)
                - channels_in (optional)
                - channels_out (optional)
            - stream_name (optional)
        - avail_blanking (optional, block):
            - avail_blanking_image (optional, block):
                - password_param (optional)
                - uri (required)
                - username (optional)
            - state (optional)
        - caption_descriptions (optional, block):
            - accessibility (optional)
            - caption_selector_name (required)
            - destination_settings (optional, block):
                - arib_destination_settings (optional, block):
                - burn_in_destination_settings (optional, block):
                    - alignment (optional)
                    - background_color (optional)
                    - background_opacity (optional)
                    - font (optional, block):
                        - password_param (optional)
                        - uri (required)
                        - username (optional)
                    - font_color (optional)
                    - font_opacity (optional)
                    - font_resolution (optional)
                    - font_size (optional)
                    - outline_color (required)
                    - outline_size (optional)
                    - shadow_color (optional)
                    - shadow_opacity (optional)
                    - shadow_x_offset (optional)
                    - shadow_y_offset (optional)
                    - teletext_grid_control (required)
                    - x_position (optional)
                    - y_position (optional)
                - dvb_sub_destination_settings (optional, block):
                    - alignment (optional)
                    - background_color (optional)
                    - background_opacity (optional)
                    - font (optional, block):
                        - password_param (optional)
                        - uri (required)
                        - username (optional)
                    - font_color (optional)
                    - font_opacity (optional)
                    - font_resolution (optional)
                    - font_size (optional)
                    - outline_color (optional)
                    - outline_size (optional)
                    - shadow_color (optional)
                    - shadow_opacity (optional)
                    - shadow_x_offset (optional)
                    - shadow_y_offset (optional)
                    - teletext_grid_control (optional)
                    - x_position (optional)
                    - y_position (optional)
                - ebu_tt_d_destination_settings (optional, block):
                    - copyright_holder (optional)
                    - fill_line_gap (optional)
                    - font_family (optional)
                    - style_control (optional)
                - embedded_destination_settings (optional, block):
                - embedded_plus_scte20_destination_settings (optional, block):
                - rtmp_caption_info_destination_settings (optional, block):
                - scte20_plus_embedded_destination_settings (optional, block):
                - scte27_destination_settings (optional, block):
                - smpte_tt_destination_settings (optional, block):
                - teletext_destination_settings (optional, block):
                - ttml_destination_settings (optional, block):
                    - style_control (required)
                - webvtt_destination_settings (optional, block):
                    - style_control (required)
            - language_code (optional)
            - language_description (optional)
            - name (required)
        - global_configuration (optional, block):
            - initial_audio_gain (optional)
            - input_end_action (optional)
            - input_loss_behavior (optional, block):
                - black_frame_msec (optional)
                - input_loss_image_color (optional)
                - input_loss_image_slate (optional, block):
                    - password_param (optional)
                    - uri (required)
                    - username (optional)
                - input_loss_image_type (optional)
                - repeat_frame_msec (optional)
            - output_locking_mode (optional)
            - output_timing_source (optional)
            - support_low_framerate_inputs (optional)
        - motion_graphics_configuration (optional, block):
            - motion_graphics_insertion (optional)
            - motion_graphics_settings (required, block):
                - html_motion_graphics_settings (optional, block):
        - nielsen_configuration (optional, block):
            - distributor_id (optional)
            - nielsen_pcm_to_id3_tagging (optional)
        - output_groups (required, block):
            - name (optional)
            - output_group_settings (required, block):
                - archive_group_settings (optional, block):
                    - archive_cdn_settings (optional, block):
                        - archive_s3_settings (optional, block):
                            - canned_acl (optional)
                    - destination (required, block):
                        - destination_ref_id (required)
                    - rollover_interval (optional)
                - frame_capture_group_settings (optional, block):
                    - destination (required, block):
                        - destination_ref_id (required)
                    - frame_capture_cdn_settings (optional, block):
                        - frame_capture_s3_settings (optional, block):
                            - canned_acl (optional)
                - hls_group_settings (optional, block):
                    - ad_markers (optional)
                    - base_url_content (optional)
                    - base_url_content1 (optional)
                    - base_url_manifest (optional)
                    - base_url_manifest1 (optional)
                    - caption_language_mappings (optional, block):
                        - caption_channel (required)
                        - language_code (required)
                        - language_description (required)
                    - caption_language_setting (optional)
                    - client_cache (optional)
                    - codec_specification (optional)
                    - constant_iv (optional)
                    - destination (required, block):
                        - destination_ref_id (required)
                    - directory_structure (optional)
                    - discontinuity_tags (optional)
                    - encryption_type (optional)
                    - hls_cdn_settings (optional, block):
                        - hls_akamai_settings (optional, block):
                            - connection_retry_interval (optional)
                            - filecache_duration (optional)
                            - http_transfer_mode (optional)
                            - num_retries (optional)
                            - restart_delay (optional)
                            - salt (optional)
                            - token (optional)
                        - hls_basic_put_settings (optional, block):
                            - connection_retry_interval (optional)
                            - filecache_duration (optional)
                            - num_retries (optional)
                            - restart_delay (optional)
                        - hls_media_store_settings (optional, block):
                            - connection_retry_interval (optional)
                            - filecache_duration (optional)
                            - media_store_storage_class (optional)
                            - num_retries (optional)
                            - restart_delay (optional)
                        - hls_s3_settings (optional, block):
                            - canned_acl (optional)
                        - hls_webdav_settings (optional, block):
                            - connection_retry_interval (optional)
                            - filecache_duration (optional)
                            - http_transfer_mode (optional)
                            - num_retries (optional)
                            - restart_delay (optional)
                    - hls_id3_segment_tagging (optional)
                    - iframe_only_playlists (optional)
                    - incomplete_segment_behavior (optional)
                    - index_n_segments (optional)
                    - input_loss_action (optional)
                    - iv_in_manifest (optional)
                    - iv_source (optional)
                    - keep_segments (optional)
                    - key_format (optional)
                    - key_format_versions (optional)
                    - key_provider_settings (optional, block):
                        - static_key_settings (optional, block):
                            - key_provider_server (optional, block):
                                - password_param (optional)
                                - uri (required)
                                - username (optional)
                            - static_key_value (required)
                    - manifest_compression (optional)
                    - manifest_duration_format (optional)
                    - min_segment_length (optional)
                    - mode (optional)
                    - output_selection (optional)
                    - program_date_time (optional)
                    - program_date_time_clock (optional)
                    - program_date_time_period (optional)
                    - redundant_manifest (optional)
                    - segment_length (optional)
                    - segments_per_subdirectory (optional)
                    - stream_inf_resolution (optional)
                    - timed_metadata_id3_frame (optional)
                    - timed_metadata_id3_period (optional)
                    - timestamp_delta_milliseconds (optional)
                    - ts_file_mode (optional)
                - media_package_group_settings (optional, block):
                    - destination (required, block):
                        - destination_ref_id (required)
                - ms_smooth_group_settings (optional, block):
                    - acquisition_point_id (optional)
                    - audio_only_timecode_control (optional)
                    - certificate_mode (optional)
                    - connection_retry_interval (optional)
                    - destination (required, block):
                        - destination_ref_id (required)
                    - event_id (optional)
                    - event_id_mode (optional)
                    - event_stop_behavior (optional)
                    - filecache_duration (optional)
                    - fragment_length (optional)
                    - input_loss_action (optional)
                    - num_retries (optional)
                    - restart_delay (optional)
                    - segmentation_mode (optional)
                    - send_delay_ms (optional)
                    - sparse_track_type (optional)
                    - stream_manifest_behavior (optional)
                    - timestamp_offset (optional)
                    - timestamp_offset_mode (optional)
                - multiplex_group_settings (optional, block):
                - rtmp_group_settings (optional, block):
                    - ad_markers (optional)
                    - authentication_scheme (optional)
                    - cache_full_behavior (optional)
                    - cache_length (optional)
                    - caption_data (optional)
                    - input_loss_action (optional)
                    - restart_delay (optional)
                - udp_group_settings (optional, block):
                    - input_loss_action (optional)
                    - timed_metadata_id3_frame (optional)
                    - timed_metadata_id3_period (optional)
            - outputs (required, block):
                - audio_description_names (optional)
                - caption_description_names (optional)
                - output_name (optional)
                - output_settings (required, block):
                    - archive_output_settings (optional, block):
                        - container_settings (optional, block):
                            - m2ts_settings (optional, block):
                                - absent_input_audio_behavior (optional)
                                - arib (optional)
                                - arib_captions_pid (optional)
                                - arib_captions_pid_control (optional)
                                - audio_buffer_model (optional)
                                - audio_frames_per_pes (optional)
                                - audio_pids (optional)
                                - audio_stream_type (optional)
                                - bitrate (optional)
                                - buffer_model (optional)
                                - cc_descriptor (optional)
                                - dvb_nit_settings (optional, block):
                                    - network_id (required)
                                    - network_name (required)
                                    - rep_interval (optional)
                                - dvb_sdt_settings (optional, block):
                                    - output_sdt (optional)
                                    - rep_interval (optional)
                                    - service_name (optional)
                                    - service_provider_name (optional)
                                - dvb_sub_pids (optional)
                                - dvb_tdt_settings (optional, block):
                                    - rep_interval (optional)
                                - dvb_teletext_pid (optional)
                                - ebif (optional)
                                - ebp_audio_interval (optional)
                                - ebp_lookahead_ms (optional)
                                - ebp_placement (optional)
                                - ecm_pid (optional)
                                - es_rate_in_pes (optional)
                                - etv_platform_pid (optional)
                                - etv_signal_pid (optional)
                                - fragment_time (optional)
                                - klv (optional)
                                - klv_data_pids (optional)
                                - nielsen_id3_behavior (optional)
                                - null_packet_bitrate (optional)
                                - pat_interval (optional)
                                - pcr_control (optional)
                                - pcr_period (optional)
                                - pcr_pid (optional)
                                - pmt_interval (optional)
                                - pmt_pid (optional)
                                - program_num (optional)
                                - rate_mode (optional)
                                - scte27_pids (optional)
                                - scte35_control (optional)
                                - scte35_pid (optional)
                                - segmentation_markers (optional)
                                - segmentation_style (optional)
                                - segmentation_time (optional)
                                - timed_metadata_behavior (optional)
                                - timed_metadata_pid (optional)
                                - transport_stream_id (optional)
                                - video_pid (optional)
                            - raw_settings (optional, block):
                        - extension (optional)
                        - name_modifier (optional)
                    - frame_capture_output_settings (optional, block):
                        - name_modifier (optional)
                    - hls_output_settings (optional, block):
                        - h265_packaging_type (optional)
                        - hls_settings (required, block):
                            - audio_only_hls_settings (optional, block):
                                - audio_group_id (optional)
                                - audio_only_image (optional, block):
                                    - password_param (optional)
                                    - uri (required)
                                    - username (optional)
                                - audio_track_type (optional)
                                - segment_type (optional)
                            - fmp4_hls_settings (optional, block):
                                - audio_rendition_sets (optional)
                                - nielsen_id3_behavior (optional)
                                - timed_metadata_behavior (optional)
                            - frame_capture_hls_settings (optional, block):
                            - standard_hls_settings (optional, block):
                                - audio_rendition_sets (optional)
                                - m3u8_settings (required, block):
                                    - audio_frames_per_pes (optional)
                                    - audio_pids (optional)
                                    - ecm_pid (optional)
                                    - nielsen_id3_behavior (optional)
                                    - pat_interval (optional)
                                    - pcr_control (optional)
                                    - pcr_period (optional)
                                    - pcr_pid (optional)
                                    - pmt_interval (optional)
                                    - pmt_pid (optional)
                                    - program_num (optional)
                                    - scte35_behavior (optional)
                                    - scte35_pid (optional)
                                    - timed_metadata_behavior (optional)
                                    - timed_metadata_pid (optional)
                                    - transport_stream_id (optional)
                                    - video_pid (optional)
                        - name_modifier (optional)
                        - segment_modifier (optional)
                    - media_package_output_settings (optional, block):
                    - ms_smooth_output_settings (optional, block):
                        - h265_packaging_type (optional)
                        - name_modifier (optional)
                    - multiplex_output_settings (optional, block):
                        - destination (required, block):
                            - destination_ref_id (required)
                    - rtmp_output_settings (optional, block):
                        - certificate_mode (optional)
                        - connection_retry_interval (optional)
                        - destination (required, block):
                            - destination_ref_id (required)
                        - num_retries (optional)
                    - udp_output_settings (optional, block):
                        - buffer_msec (optional)
                        - container_settings (required, block):
                            - m2ts_settings (optional, block):
                                - absent_input_audio_behavior (optional)
                                - arib (optional)
                                - arib_captions_pid (optional)
                                - arib_captions_pid_control (optional)
                                - audio_buffer_model (optional)
                                - audio_frames_per_pes (optional)
                                - audio_pids (optional)
                                - audio_stream_type (optional)
                                - bitrate (optional)
                                - buffer_model (optional)
                                - cc_descriptor (optional)
                                - dvb_nit_settings (optional, block):
                                    - network_id (required)
                                    - network_name (required)
                                    - rep_interval (optional)
                                - dvb_sdt_settings (optional, block):
                                    - output_sdt (optional)
                                    - rep_interval (optional)
                                    - service_name (optional)
                                    - service_provider_name (optional)
                                - dvb_sub_pids (optional)
                                - dvb_tdt_settings (optional, block):
                                    - rep_interval (optional)
                                - dvb_teletext_pid (optional)
                                - ebif (optional)
                                - ebp_audio_interval (optional)
                                - ebp_lookahead_ms (optional)
                                - ebp_placement (optional)
                                - ecm_pid (optional)
                                - es_rate_in_pes (optional)
                                - etv_platform_pid (optional)
                                - etv_signal_pid (optional)
                                - fragment_time (optional)
                                - klv (optional)
                                - klv_data_pids (optional)
                                - nielsen_id3_behavior (optional)
                                - null_packet_bitrate (optional)
                                - pat_interval (optional)
                                - pcr_control (optional)
                                - pcr_period (optional)
                                - pcr_pid (optional)
                                - pmt_interval (optional)
                                - pmt_pid (optional)
                                - program_num (optional)
                                - rate_mode (optional)
                                - scte27_pids (optional)
                                - scte35_control (optional)
                                - scte35_pid (optional)
                                - segmentation_markers (optional)
                                - segmentation_style (optional)
                                - segmentation_time (optional)
                                - timed_metadata_behavior (optional)
                                - timed_metadata_pid (optional)
                                - transport_stream_id (optional)
                                - video_pid (optional)
                        - destination (required, block):
                            - destination_ref_id (required)
                        - fec_output_settings (optional, block):
                            - column_depth (optional)
                            - include_fec (optional)
                            - row_length (optional)
                - video_description_name (optional)
        - timecode_config (required, block):
            - source (required)
            - sync_threshold (optional)
        - video_descriptions (optional, block):
            - codec_settings (optional, block):
                - frame_capture_settings (optional, block):
                    - capture_interval (optional)
                    - capture_interval_units (optional)
                - h264_settings (optional, block):
                    - adaptive_quantization (optional)
                    - afd_signaling (optional)
                    - bitrate (optional)
                    - buf_fill_pct (optional)
                    - buf_size (optional)
                    - color_metadata (optional)
                    - entropy_encoding (optional)
                    - filter_settings (optional, block):
                        - temporal_filter_settings (optional, block):
                            - post_filter_sharpening (optional)
                            - strength (optional)
                    - fixed_afd (optional)
                    - flicker_aq (optional)
                    - force_field_pictures (optional)
                    - framerate_control (optional)
                    - framerate_denominator (optional)
                    - framerate_numerator (optional)
                    - gop_b_reference (optional)
                    - gop_closed_cadence (optional)
                    - gop_num_b_frames (optional)
                    - gop_size (optional)
                    - gop_size_units (optional)
                    - level (optional)
                    - look_ahead_rate_control (optional)
                    - max_bitrate (optional)
                    - min_i_interval (optional)
                    - num_ref_frames (optional)
                    - par_control (optional)
                    - par_denominator (optional)
                    - par_numerator (optional)
                    - profile (optional)
                    - quality_level (optional)
                    - qvbr_quality_level (optional)
                    - rate_control_mode (optional)
                    - scan_type (optional)
                    - scene_change_detect (optional)
                    - slices (optional)
                    - softness (optional)
                    - spatial_aq (optional)
                    - subgop_length (optional)
                    - syntax (optional)
                    - temporal_aq (optional)
                    - timecode_insertion (optional)
                - h265_settings (optional, block):
                    - adaptive_quantization (optional)
                    - afd_signaling (optional)
                    - alternative_transfer_function (optional)
                    - bitrate (required)
                    - buf_size (optional)
                    - color_metadata (optional)
                    - color_space_settings (optional, block):
                        - color_space_passthrough_settings (optional, block):
                        - dolby_vision81_settings (optional, block):
                        - hdr10_settings (optional, block):
                            - max_cll (optional)
                            - max_fall (optional)
                        - rec601_settings (optional, block):
                        - rec709_settings (optional, block):
                    - filter_settings (optional, block):
                        - temporal_filter_settings (optional, block):
                            - post_filter_sharpening (optional)
                            - strength (optional)
                    - fixed_afd (optional)
                    - flicker_aq (optional)
                    - framerate_denominator (required)
                    - framerate_numerator (required)
                    - gop_closed_cadence (optional)
                    - gop_size (optional)
                    - gop_size_units (optional)
                    - level (optional)
                    - look_ahead_rate_control (optional)
                    - max_bitrate (optional)
                    - min_i_interval (optional)
                    - min_qp (optional)
                    - mv_over_picture_boundaries (optional)
                    - mv_temporal_predictor (optional)
                    - par_denominator (optional)
                    - par_numerator (optional)
                    - profile (optional)
                    - qvbr_quality_level (optional)
                    - rate_control_mode (optional)
                    - scan_type (optional)
                    - scene_change_detect (optional)
                    - slices (optional)
                    - tier (optional)
                    - tile_height (optional)
                    - tile_padding (optional)
                    - tile_width (optional)
                    - timecode_burnin_settings (optional, block):
                        - prefix (optional)
                        - timecode_burnin_font_size (optional)
                        - timecode_burnin_position (optional)
                    - timecode_insertion (optional)
                    - treeblock_size (optional)
            - height (optional)
            - name (required)
            - respond_to_afd (optional)
            - scaling_behavior (optional)
            - sharpness (optional)
            - width (optional)
    - input_attachments (block):
        - automatic_input_failover_settings (optional, block):
            - error_clear_time_msec (optional)
            - failover_condition (optional, block):
                - failover_condition_settings (optional, block):
                    - audio_silence_settings (optional, block):
                        - audio_selector_name (required)
                        - audio_silence_threshold_msec (optional)
                    - input_loss_settings (optional, block):
                        - input_loss_threshold_msec (optional)
                    - video_black_settings (optional, block):
                        - black_detect_threshold (optional)
                        - video_black_threshold_msec (optional)
            - input_preference (optional)
            - secondary_input_id (required)
        - input_attachment_name (required)
        - input_id (required)
        - input_settings (optional, block):
            - audio_selector (optional, block):
                - name (required)
                - selector_settings (optional, block):
                    - audio_hls_rendition_selection (optional, block):
                        - group_id (required)
                        - name (required)
                    - audio_language_selection (optional, block):
                        - language_code (required)
                        - language_selection_policy (optional)
                    - audio_pid_selection (optional, block):
                        - pid (required)
                    - audio_track_selection (optional, block):
                        - dolby_e_decode (optional, block):
                            - program_selection (required)
                        - tracks (required, block):
                            - track (required)
            - caption_selector (optional, block):
                - language_code (optional)
                - name (required)
                - selector_settings (optional, block):
                    - ancillary_source_settings (optional, block):
                        - source_ancillary_channel_number (optional)
                    - arib_source_settings (optional, block):
                    - dvb_sub_source_settings (optional, block):
                        - ocr_language (optional)
                        - pid (optional)
                    - embedded_source_settings (optional, block):
                        - convert_608_to_708 (optional)
                        - scte20_detection (optional)
                        - source_608_channel_number (optional)
                    - scte20_source_settings (optional, block):
                        - convert_608_to_708 (optional)
                        - source_608_channel_number (optional)
                    - scte27_source_settings (optional, block):
                        - ocr_language (optional)
                        - pid (optional)
                    - teletext_source_settings (optional, block):
                        - output_rectangle (optional, block):
                            - height (required)
                            - left_offset (required)
                            - top_offset (required)
                            - width (required)
                        - page_number (optional)
            - deblock_filter (optional)
            - denoise_filter (optional)
            - filter_strength (optional)
            - input_filter (optional)
            - network_input_settings (optional, block):
                - hls_input_settings (optional, block):
                    - bandwidth (optional)
                    - buffer_segments (optional)
                    - retries (optional)
                    - retry_interval (optional)
                    - scte35_source (optional)
                - server_validation (optional)
            - scte35_pid (optional)
            - smpte2038_data_preference (optional)
            - source_end_behavior (optional)
            - video_selector (optional, block):
                - color_space (optional)
                - color_space_usage (optional)
    - input_specification (block):
        - codec (required)
        - input_resolution (required)
        - maximum_bitrate (required)
Optional:
    - log_level
    - region
    - role_arn
    - start_channel
    - tags
    - tags_all
    - cdi_input_specification (block):
        - resolution (required)
    - maintenance (block):
        - maintenance_day (required)
        - maintenance_start_time (required)
    - vpc (block):
        - public_address_allocation_ids (required)
        - security_group_ids (optional)
        - subnet_ids (required)
EOT

  type = map(object({
    channel_class = string
    name          = string
    log_level     = optional(string)
    region        = optional(string)
    role_arn      = optional(string)
    start_channel = optional(bool)
    tags          = optional(map(string))
    tags_all      = optional(map(string))
    destinations = list(object({
      id = string
      media_package_settings = optional(list(object({
        channel_id = string
      })))
      multiplex_settings = optional(object({
        multiplex_id = string
        program_name = string
      }))
      settings = optional(list(object({
        password_param = optional(string)
        stream_name    = optional(string)
        url            = optional(string)
        username       = optional(string)
      })))
    }))
    encoder_settings = object({
      audio_descriptions = optional(list(object({
        audio_normalization_settings = optional(object({
          algorithm         = optional(string)
          algorithm_control = optional(string)
          target_lkfs       = optional(number)
        }))
        audio_selector_name = string
        audio_type          = optional(string)
        audio_type_control  = optional(string)
        audio_watermark_settings = optional(object({
          nielsen_watermarks_settings = optional(object({
            nielsen_cbet_settings = optional(object({
              cbet_check_digit_string = string
              cbet_stepaside          = string
              csid                    = string
            }))
            nielsen_distribution_type = optional(string)
            nielsen_naes_ii_nw_settings = optional(list(object({
              check_digit_string = string
              sid                = number
            })))
          }))
        }))
        codec_settings = optional(object({
          aac_settings = optional(object({
            bitrate           = optional(number)
            coding_mode       = optional(string)
            input_type        = optional(string)
            profile           = optional(string)
            rate_control_mode = optional(string)
            raw_format        = optional(string)
            sample_rate       = optional(number)
            spec              = optional(string)
            vbr_quality       = optional(string)
          }))
          ac3_settings = optional(object({
            bitrate          = optional(number)
            bitstream_mode   = optional(string)
            coding_mode      = optional(string)
            dialnorm         = optional(number)
            drc_profile      = optional(string)
            lfe_filter       = optional(string)
            metadata_control = optional(string)
          }))
          eac3_atmos_settings = optional(object({
            bitrate       = optional(number)
            coding_mode   = optional(string)
            dialnorm      = optional(number)
            drc_line      = optional(string)
            drc_rf        = optional(string)
            height_trim   = optional(number)
            surround_trim = optional(number)
          }))
          eac3_settings = optional(object({
            attenuation_control      = optional(string)
            bitrate                  = optional(number)
            bitstream_mode           = optional(string)
            coding_mode              = optional(string)
            dc_filter                = optional(string)
            dialnorm                 = optional(number)
            drc_line                 = optional(string)
            drc_rf                   = optional(string)
            lfe_control              = optional(string)
            lfe_filter               = optional(string)
            lo_ro_center_mix_level   = optional(number)
            lo_ro_surround_mix_level = optional(number)
            lt_rt_center_mix_level   = optional(number)
            lt_rt_surround_mix_level = optional(number)
            metadata_control         = optional(string)
            passthrough_control      = optional(string)
            phase_control            = optional(string)
            stereo_downmix           = optional(string)
            surround_ex_mode         = optional(string)
            surround_mode            = optional(string)
          }))
          mp2_settings = optional(object({
            bitrate     = optional(number)
            coding_mode = optional(string)
            sample_rate = optional(number)
          }))
          pass_through_settings = optional(object({
          }))
          wav_settings = optional(object({
            bit_depth   = optional(number)
            coding_mode = optional(string)
            sample_rate = optional(number)
          }))
        }))
        language_code         = optional(string)
        language_code_control = optional(string)
        name                  = string
        remix_settings = optional(object({
          channel_mappings = list(object({
            input_channel_levels = list(object({
              gain          = number
              input_channel = number
            }))
            output_channel = number
          }))
          channels_in  = optional(number)
          channels_out = optional(number)
        }))
        stream_name = optional(string)
      })))
      avail_blanking = optional(object({
        avail_blanking_image = optional(object({
          password_param = optional(string)
          uri            = string
          username       = optional(string)
        }))
        state = optional(string)
      }))
      caption_descriptions = optional(list(object({
        accessibility         = optional(string)
        caption_selector_name = string
        destination_settings = optional(object({
          arib_destination_settings = optional(object({
          }))
          burn_in_destination_settings = optional(object({
            alignment          = optional(string)
            background_color   = optional(string)
            background_opacity = optional(number)
            font = optional(object({
              password_param = optional(string)
              uri            = string
              username       = optional(string)
            }))
            font_color            = optional(string)
            font_opacity          = optional(number)
            font_resolution       = optional(number)
            font_size             = optional(string)
            outline_color         = string
            outline_size          = optional(number)
            shadow_color          = optional(string)
            shadow_opacity        = optional(number)
            shadow_x_offset       = optional(number)
            shadow_y_offset       = optional(number)
            teletext_grid_control = string
            x_position            = optional(number)
            y_position            = optional(number)
          }))
          dvb_sub_destination_settings = optional(object({
            alignment          = optional(string)
            background_color   = optional(string)
            background_opacity = optional(number)
            font = optional(object({
              password_param = optional(string)
              uri            = string
              username       = optional(string)
            }))
            font_color            = optional(string)
            font_opacity          = optional(number)
            font_resolution       = optional(number)
            font_size             = optional(string)
            outline_color         = optional(string)
            outline_size          = optional(number)
            shadow_color          = optional(string)
            shadow_opacity        = optional(number)
            shadow_x_offset       = optional(number)
            shadow_y_offset       = optional(number)
            teletext_grid_control = optional(string)
            x_position            = optional(number)
            y_position            = optional(number)
          }))
          ebu_tt_d_destination_settings = optional(object({
            copyright_holder = optional(string)
            fill_line_gap    = optional(string)
            font_family      = optional(string)
            style_control    = optional(string)
          }))
          embedded_destination_settings = optional(object({
          }))
          embedded_plus_scte20_destination_settings = optional(object({
          }))
          rtmp_caption_info_destination_settings = optional(object({
          }))
          scte20_plus_embedded_destination_settings = optional(object({
          }))
          scte27_destination_settings = optional(object({
          }))
          smpte_tt_destination_settings = optional(object({
          }))
          teletext_destination_settings = optional(object({
          }))
          ttml_destination_settings = optional(object({
            style_control = string
          }))
          webvtt_destination_settings = optional(object({
            style_control = string
          }))
        }))
        language_code        = optional(string)
        language_description = optional(string)
        name                 = string
      })))
      global_configuration = optional(object({
        initial_audio_gain = optional(number)
        input_end_action   = optional(string)
        input_loss_behavior = optional(object({
          black_frame_msec       = optional(number)
          input_loss_image_color = optional(string)
          input_loss_image_slate = optional(object({
            password_param = optional(string)
            uri            = string
            username       = optional(string)
          }))
          input_loss_image_type = optional(string)
          repeat_frame_msec     = optional(number)
        }))
        output_locking_mode          = optional(string)
        output_timing_source         = optional(string)
        support_low_framerate_inputs = optional(string)
      }))
      motion_graphics_configuration = optional(object({
        motion_graphics_insertion = optional(string)
        motion_graphics_settings = object({
          html_motion_graphics_settings = optional(object({
          }))
        })
      }))
      nielsen_configuration = optional(object({
        distributor_id             = optional(string)
        nielsen_pcm_to_id3_tagging = optional(string)
      }))
      output_groups = list(object({
        name = optional(string)
        output_group_settings = object({
          archive_group_settings = optional(list(object({
            archive_cdn_settings = optional(object({
              archive_s3_settings = optional(object({
                canned_acl = optional(string)
              }))
            }))
            destination = object({
              destination_ref_id = string
            })
            rollover_interval = optional(number)
          })))
          frame_capture_group_settings = optional(object({
            destination = object({
              destination_ref_id = string
            })
            frame_capture_cdn_settings = optional(object({
              frame_capture_s3_settings = optional(object({
                canned_acl = optional(string)
              }))
            }))
          }))
          hls_group_settings = optional(object({
            ad_markers         = optional(list(string))
            base_url_content   = optional(string)
            base_url_content1  = optional(string)
            base_url_manifest  = optional(string)
            base_url_manifest1 = optional(string)
            caption_language_mappings = optional(list(object({
              caption_channel      = number
              language_code        = string
              language_description = string
            })))
            caption_language_setting = optional(string)
            client_cache             = optional(string)
            codec_specification      = optional(string)
            constant_iv              = optional(string)
            destination = object({
              destination_ref_id = string
            })
            directory_structure = optional(string)
            discontinuity_tags  = optional(string)
            encryption_type     = optional(string)
            hls_cdn_settings = optional(list(object({
              hls_akamai_settings = optional(object({
                connection_retry_interval = optional(number)
                filecache_duration        = optional(number)
                http_transfer_mode        = optional(string)
                num_retries               = optional(number)
                restart_delay             = optional(number)
                salt                      = optional(string)
                token                     = optional(string)
              }))
              hls_basic_put_settings = optional(object({
                connection_retry_interval = optional(number)
                filecache_duration        = optional(number)
                num_retries               = optional(number)
                restart_delay             = optional(number)
              }))
              hls_media_store_settings = optional(object({
                connection_retry_interval = optional(number)
                filecache_duration        = optional(number)
                media_store_storage_class = optional(string)
                num_retries               = optional(number)
                restart_delay             = optional(number)
              }))
              hls_s3_settings = optional(object({
                canned_acl = optional(string)
              }))
              hls_webdav_settings = optional(object({
                connection_retry_interval = optional(number)
                filecache_duration        = optional(number)
                http_transfer_mode        = optional(string)
                num_retries               = optional(number)
                restart_delay             = optional(number)
              }))
            })))
            hls_id3_segment_tagging     = optional(string)
            iframe_only_playlists       = optional(string)
            incomplete_segment_behavior = optional(string)
            index_n_segments            = optional(number)
            input_loss_action           = optional(string)
            iv_in_manifest              = optional(string)
            iv_source                   = optional(string)
            keep_segments               = optional(number)
            key_format                  = optional(string)
            key_format_versions         = optional(string)
            key_provider_settings = optional(object({
              static_key_settings = optional(list(object({
                key_provider_server = optional(object({
                  password_param = optional(string)
                  uri            = string
                  username       = optional(string)
                }))
                static_key_value = string
              })))
            }))
            manifest_compression         = optional(string)
            manifest_duration_format     = optional(string)
            min_segment_length           = optional(number)
            mode                         = optional(string)
            output_selection             = optional(string)
            program_date_time            = optional(string)
            program_date_time_clock      = optional(string)
            program_date_time_period     = optional(number)
            redundant_manifest           = optional(string)
            segment_length               = optional(number)
            segments_per_subdirectory    = optional(number)
            stream_inf_resolution        = optional(string)
            timed_metadata_id3_frame     = optional(string)
            timed_metadata_id3_period    = optional(number)
            timestamp_delta_milliseconds = optional(number)
            ts_file_mode                 = optional(string)
          }))
          media_package_group_settings = optional(object({
            destination = object({
              destination_ref_id = string
            })
          }))
          ms_smooth_group_settings = optional(object({
            acquisition_point_id        = optional(string)
            audio_only_timecode_control = optional(string)
            certificate_mode            = optional(string)
            connection_retry_interval   = optional(number)
            destination = object({
              destination_ref_id = string
            })
            event_id                 = optional(string)
            event_id_mode            = optional(string)
            event_stop_behavior      = optional(string)
            filecache_duration       = optional(number)
            fragment_length          = optional(number)
            input_loss_action        = optional(string)
            num_retries              = optional(number)
            restart_delay            = optional(number)
            segmentation_mode        = optional(string)
            send_delay_ms            = optional(number)
            sparse_track_type        = optional(string)
            stream_manifest_behavior = optional(string)
            timestamp_offset         = optional(string)
            timestamp_offset_mode    = optional(string)
          }))
          multiplex_group_settings = optional(object({
          }))
          rtmp_group_settings = optional(object({
            ad_markers            = optional(list(string))
            authentication_scheme = optional(string)
            cache_full_behavior   = optional(string)
            cache_length          = optional(number)
            caption_data          = optional(string)
            input_loss_action     = optional(string)
            restart_delay         = optional(number)
          }))
          udp_group_settings = optional(object({
            input_loss_action         = optional(string)
            timed_metadata_id3_frame  = optional(string)
            timed_metadata_id3_period = optional(number)
          }))
        })
        outputs = list(object({
          audio_description_names   = optional(set(string))
          caption_description_names = optional(set(string))
          output_name               = optional(string)
          output_settings = object({
            archive_output_settings = optional(object({
              container_settings = optional(object({
                m2ts_settings = optional(object({
                  absent_input_audio_behavior = optional(string)
                  arib                        = optional(string)
                  arib_captions_pid           = optional(string)
                  arib_captions_pid_control   = optional(string)
                  audio_buffer_model          = optional(string)
                  audio_frames_per_pes        = optional(number)
                  audio_pids                  = optional(string)
                  audio_stream_type           = optional(string)
                  bitrate                     = optional(number)
                  buffer_model                = optional(string)
                  cc_descriptor               = optional(string)
                  dvb_nit_settings = optional(object({
                    network_id   = number
                    network_name = string
                    rep_interval = optional(number)
                  }))
                  dvb_sdt_settings = optional(object({
                    output_sdt            = optional(string)
                    rep_interval          = optional(number)
                    service_name          = optional(string)
                    service_provider_name = optional(string)
                  }))
                  dvb_sub_pids = optional(string)
                  dvb_tdt_settings = optional(object({
                    rep_interval = optional(number)
                  }))
                  dvb_teletext_pid        = optional(string)
                  ebif                    = optional(string)
                  ebp_audio_interval      = optional(string)
                  ebp_lookahead_ms        = optional(number)
                  ebp_placement           = optional(string)
                  ecm_pid                 = optional(string)
                  es_rate_in_pes          = optional(string)
                  etv_platform_pid        = optional(string)
                  etv_signal_pid          = optional(string)
                  fragment_time           = optional(number)
                  klv                     = optional(string)
                  klv_data_pids           = optional(string)
                  nielsen_id3_behavior    = optional(string)
                  null_packet_bitrate     = optional(number)
                  pat_interval            = optional(number)
                  pcr_control             = optional(string)
                  pcr_period              = optional(number)
                  pcr_pid                 = optional(string)
                  pmt_interval            = optional(number)
                  pmt_pid                 = optional(string)
                  program_num             = optional(number)
                  rate_mode               = optional(string)
                  scte27_pids             = optional(string)
                  scte35_control          = optional(string)
                  scte35_pid              = optional(string)
                  segmentation_markers    = optional(string)
                  segmentation_style      = optional(string)
                  segmentation_time       = optional(number)
                  timed_metadata_behavior = optional(string)
                  timed_metadata_pid      = optional(string)
                  transport_stream_id     = optional(number)
                  video_pid               = optional(string)
                }))
                raw_settings = optional(object({
                }))
              }))
              extension     = optional(string)
              name_modifier = optional(string)
            }))
            frame_capture_output_settings = optional(object({
              name_modifier = optional(string)
            }))
            hls_output_settings = optional(object({
              h265_packaging_type = optional(string)
              hls_settings = object({
                audio_only_hls_settings = optional(object({
                  audio_group_id = optional(string)
                  audio_only_image = optional(object({
                    password_param = optional(string)
                    uri            = string
                    username       = optional(string)
                  }))
                  audio_track_type = optional(string)
                  segment_type     = optional(string)
                }))
                fmp4_hls_settings = optional(object({
                  audio_rendition_sets    = optional(string)
                  nielsen_id3_behavior    = optional(string)
                  timed_metadata_behavior = optional(string)
                }))
                frame_capture_hls_settings = optional(object({
                }))
                standard_hls_settings = optional(object({
                  audio_rendition_sets = optional(string)
                  m3u8_settings = object({
                    audio_frames_per_pes    = optional(number)
                    audio_pids              = optional(string)
                    ecm_pid                 = optional(string)
                    nielsen_id3_behavior    = optional(string)
                    pat_interval            = optional(number)
                    pcr_control             = optional(string)
                    pcr_period              = optional(number)
                    pcr_pid                 = optional(string)
                    pmt_interval            = optional(number)
                    pmt_pid                 = optional(string)
                    program_num             = optional(number)
                    scte35_behavior         = optional(string)
                    scte35_pid              = optional(string)
                    timed_metadata_behavior = optional(string)
                    timed_metadata_pid      = optional(string)
                    transport_stream_id     = optional(number)
                    video_pid               = optional(string)
                  })
                }))
              })
              name_modifier    = optional(string)
              segment_modifier = optional(string)
            }))
            media_package_output_settings = optional(object({
            }))
            ms_smooth_output_settings = optional(object({
              h265_packaging_type = optional(string)
              name_modifier       = optional(string)
            }))
            multiplex_output_settings = optional(object({
              destination = object({
                destination_ref_id = string
              })
            }))
            rtmp_output_settings = optional(object({
              certificate_mode          = optional(string)
              connection_retry_interval = optional(number)
              destination = object({
                destination_ref_id = string
              })
              num_retries = optional(number)
            }))
            udp_output_settings = optional(object({
              buffer_msec = optional(number)
              container_settings = object({
                m2ts_settings = optional(object({
                  absent_input_audio_behavior = optional(string)
                  arib                        = optional(string)
                  arib_captions_pid           = optional(string)
                  arib_captions_pid_control   = optional(string)
                  audio_buffer_model          = optional(string)
                  audio_frames_per_pes        = optional(number)
                  audio_pids                  = optional(string)
                  audio_stream_type           = optional(string)
                  bitrate                     = optional(number)
                  buffer_model                = optional(string)
                  cc_descriptor               = optional(string)
                  dvb_nit_settings = optional(object({
                    network_id   = number
                    network_name = string
                    rep_interval = optional(number)
                  }))
                  dvb_sdt_settings = optional(object({
                    output_sdt            = optional(string)
                    rep_interval          = optional(number)
                    service_name          = optional(string)
                    service_provider_name = optional(string)
                  }))
                  dvb_sub_pids = optional(string)
                  dvb_tdt_settings = optional(object({
                    rep_interval = optional(number)
                  }))
                  dvb_teletext_pid        = optional(string)
                  ebif                    = optional(string)
                  ebp_audio_interval      = optional(string)
                  ebp_lookahead_ms        = optional(number)
                  ebp_placement           = optional(string)
                  ecm_pid                 = optional(string)
                  es_rate_in_pes          = optional(string)
                  etv_platform_pid        = optional(string)
                  etv_signal_pid          = optional(string)
                  fragment_time           = optional(number)
                  klv                     = optional(string)
                  klv_data_pids           = optional(string)
                  nielsen_id3_behavior    = optional(string)
                  null_packet_bitrate     = optional(number)
                  pat_interval            = optional(number)
                  pcr_control             = optional(string)
                  pcr_period              = optional(number)
                  pcr_pid                 = optional(string)
                  pmt_interval            = optional(number)
                  pmt_pid                 = optional(string)
                  program_num             = optional(number)
                  rate_mode               = optional(string)
                  scte27_pids             = optional(string)
                  scte35_control          = optional(string)
                  scte35_pid              = optional(string)
                  segmentation_markers    = optional(string)
                  segmentation_style      = optional(string)
                  segmentation_time       = optional(number)
                  timed_metadata_behavior = optional(string)
                  timed_metadata_pid      = optional(string)
                  transport_stream_id     = optional(number)
                  video_pid               = optional(string)
                }))
              })
              destination = object({
                destination_ref_id = string
              })
              fec_output_settings = optional(object({
                column_depth = optional(number)
                include_fec  = optional(string)
                row_length   = optional(number)
              }))
            }))
          })
          video_description_name = optional(string)
        }))
      }))
      timecode_config = object({
        source         = string
        sync_threshold = optional(number)
      })
      video_descriptions = optional(list(object({
        codec_settings = optional(object({
          frame_capture_settings = optional(object({
            capture_interval       = optional(number)
            capture_interval_units = optional(string)
          }))
          h264_settings = optional(object({
            adaptive_quantization = optional(string)
            afd_signaling         = optional(string)
            bitrate               = optional(number)
            buf_fill_pct          = optional(number)
            buf_size              = optional(number)
            color_metadata        = optional(string)
            entropy_encoding      = optional(string)
            filter_settings = optional(object({
              temporal_filter_settings = optional(object({
                post_filter_sharpening = optional(string)
                strength               = optional(string)
              }))
            }))
            fixed_afd               = optional(string)
            flicker_aq              = optional(string)
            force_field_pictures    = optional(string)
            framerate_control       = optional(string)
            framerate_denominator   = optional(number)
            framerate_numerator     = optional(number)
            gop_b_reference         = optional(string)
            gop_closed_cadence      = optional(number)
            gop_num_b_frames        = optional(number)
            gop_size                = optional(number)
            gop_size_units          = optional(string)
            level                   = optional(string)
            look_ahead_rate_control = optional(string)
            max_bitrate             = optional(number)
            min_i_interval          = optional(number)
            num_ref_frames          = optional(number)
            par_control             = optional(string)
            par_denominator         = optional(number)
            par_numerator           = optional(number)
            profile                 = optional(string)
            quality_level           = optional(string)
            qvbr_quality_level      = optional(number)
            rate_control_mode       = optional(string)
            scan_type               = optional(string)
            scene_change_detect     = optional(string)
            slices                  = optional(number)
            softness                = optional(number)
            spatial_aq              = optional(string)
            subgop_length           = optional(string)
            syntax                  = optional(string)
            temporal_aq             = optional(string)
            timecode_insertion      = optional(string)
          }))
          h265_settings = optional(object({
            adaptive_quantization         = optional(string)
            afd_signaling                 = optional(string)
            alternative_transfer_function = optional(string)
            bitrate                       = number
            buf_size                      = optional(number)
            color_metadata                = optional(string)
            color_space_settings = optional(object({
              color_space_passthrough_settings = optional(object({
              }))
              dolby_vision81_settings = optional(object({
              }))
              hdr10_settings = optional(object({
                max_cll  = optional(number)
                max_fall = optional(number)
              }))
              rec601_settings = optional(object({
              }))
              rec709_settings = optional(object({
              }))
            }))
            filter_settings = optional(object({
              temporal_filter_settings = optional(object({
                post_filter_sharpening = optional(string)
                strength               = optional(string)
              }))
            }))
            fixed_afd                  = optional(string)
            flicker_aq                 = optional(string)
            framerate_denominator      = number
            framerate_numerator        = number
            gop_closed_cadence         = optional(number)
            gop_size                   = optional(number)
            gop_size_units             = optional(string)
            level                      = optional(string)
            look_ahead_rate_control    = optional(string)
            max_bitrate                = optional(number)
            min_i_interval             = optional(number)
            min_qp                     = optional(number)
            mv_over_picture_boundaries = optional(string)
            mv_temporal_predictor      = optional(string)
            par_denominator            = optional(number)
            par_numerator              = optional(number)
            profile                    = optional(string)
            qvbr_quality_level         = optional(number)
            rate_control_mode          = optional(string)
            scan_type                  = optional(string)
            scene_change_detect        = optional(string)
            slices                     = optional(number)
            tier                       = optional(string)
            tile_height                = optional(number)
            tile_padding               = optional(string)
            tile_width                 = optional(number)
            timecode_burnin_settings = optional(object({
              prefix                    = optional(string)
              timecode_burnin_font_size = optional(string)
              timecode_burnin_position  = optional(string)
            }))
            timecode_insertion = optional(string)
            treeblock_size     = optional(string)
          }))
        }))
        height           = optional(number)
        name             = string
        respond_to_afd   = optional(string)
        scaling_behavior = optional(string)
        sharpness        = optional(number)
        width            = optional(number)
      })))
    })
    input_attachments = list(object({
      automatic_input_failover_settings = optional(object({
        error_clear_time_msec = optional(number)
        failover_condition = optional(list(object({
          failover_condition_settings = optional(object({
            audio_silence_settings = optional(object({
              audio_selector_name          = string
              audio_silence_threshold_msec = optional(number)
            }))
            input_loss_settings = optional(object({
              input_loss_threshold_msec = optional(number)
            }))
            video_black_settings = optional(object({
              black_detect_threshold     = optional(number)
              video_black_threshold_msec = optional(number)
            }))
          }))
        })))
        input_preference   = optional(string)
        secondary_input_id = string
      }))
      input_attachment_name = string
      input_id              = string
      input_settings = optional(object({
        audio_selector = optional(list(object({
          name = string
          selector_settings = optional(object({
            audio_hls_rendition_selection = optional(object({
              group_id = string
              name     = string
            }))
            audio_language_selection = optional(object({
              language_code             = string
              language_selection_policy = optional(string)
            }))
            audio_pid_selection = optional(object({
              pid = number
            }))
            audio_track_selection = optional(object({
              dolby_e_decode = optional(object({
                program_selection = string
              }))
              tracks = list(object({
                track = number
              }))
            }))
          }))
        })))
        caption_selector = optional(list(object({
          language_code = optional(string)
          name          = string
          selector_settings = optional(object({
            ancillary_source_settings = optional(object({
              source_ancillary_channel_number = optional(number)
            }))
            arib_source_settings = optional(object({
            }))
            dvb_sub_source_settings = optional(object({
              ocr_language = optional(string)
              pid          = optional(number)
            }))
            embedded_source_settings = optional(object({
              convert_608_to_708        = optional(string)
              scte20_detection          = optional(string)
              source_608_channel_number = optional(number)
            }))
            scte20_source_settings = optional(object({
              convert_608_to_708        = optional(string)
              source_608_channel_number = optional(number)
            }))
            scte27_source_settings = optional(object({
              ocr_language = optional(string)
              pid          = optional(number)
            }))
            teletext_source_settings = optional(object({
              output_rectangle = optional(object({
                height      = number
                left_offset = number
                top_offset  = number
                width       = number
              }))
              page_number = optional(string)
            }))
          }))
        })))
        deblock_filter  = optional(string)
        denoise_filter  = optional(string)
        filter_strength = optional(number)
        input_filter    = optional(string)
        network_input_settings = optional(object({
          hls_input_settings = optional(object({
            bandwidth       = optional(number)
            buffer_segments = optional(number)
            retries         = optional(number)
            retry_interval  = optional(number)
            scte35_source   = optional(string)
          }))
          server_validation = optional(string)
        }))
        scte35_pid                = optional(number)
        smpte2038_data_preference = optional(string)
        source_end_behavior       = optional(string)
        video_selector = optional(object({
          color_space       = optional(string)
          color_space_usage = optional(string)
        }))
      }))
    }))
    input_specification = object({
      codec            = string
      input_resolution = string
      maximum_bitrate  = string
    })
    cdi_input_specification = optional(object({
      resolution = string
    }))
    maintenance = optional(object({
      maintenance_day        = string
      maintenance_start_time = string
    }))
    vpc = optional(object({
      public_address_allocation_ids = list(string)
      security_group_ids            = optional(set(string))
      subnet_ids                    = set(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.medialive_channels : (
        length(v.destinations) >= 1
      )
    ])
    error_message = "Each destinations list must contain at least 1 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.medialive_channels : (
        v.encoder_settings.audio_descriptions == null || alltrue([for item in v.encoder_settings.audio_descriptions : (item.remix_settings == null || (length(item.remix_settings.channel_mappings) >= 1))])
      )
    ])
    error_message = "Each channel_mappings list must contain at least 1 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.medialive_channels : (
        v.encoder_settings.audio_descriptions == null || alltrue([for item in v.encoder_settings.audio_descriptions : (item.remix_settings == null || (alltrue([for item in item.remix_settings.channel_mappings : (length(item.input_channel_levels) >= 1)])))])
      )
    ])
    error_message = "Each input_channel_levels list must contain at least 1 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.medialive_channels : (
        length(v.encoder_settings.output_groups) >= 1
      )
    ])
    error_message = "Each output_groups list must contain at least 1 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.medialive_channels : (
        alltrue([for item in v.encoder_settings.output_groups : (item.output_group_settings.hls_group_settings == null || (item.output_group_settings.hls_group_settings.caption_language_mappings == null || (length(item.output_group_settings.hls_group_settings.caption_language_mappings) <= 4)))])
      )
    ])
    error_message = "Each caption_language_mappings list must contain at most 4 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.medialive_channels : (
        alltrue([for item in v.encoder_settings.output_groups : (length(item.outputs) >= 1)])
      )
    ])
    error_message = "Each outputs list must contain at least 1 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.medialive_channels : (
        length(v.input_attachments) >= 1
      )
    ])
    error_message = "Each input_attachments list must contain at least 1 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.medialive_channels : (
        alltrue([for item in v.input_attachments : (item.input_settings == null || (item.input_settings.audio_selector == null || alltrue([for item in item.input_settings.audio_selector : (item.selector_settings == null || (item.selector_settings.audio_track_selection == null || (length(item.selector_settings.audio_track_selection.tracks) >= 1)))])))])
      )
    ])
    error_message = "Each tracks list must contain at least 1 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.medialive_channels : (
        alltrue([for item in v.input_attachments : (item.input_settings == null || (item.input_settings.caption_selector == null || alltrue([for item in item.input_settings.caption_selector : (item.selector_settings == null || (item.selector_settings.dvb_sub_source_settings == null || (item.selector_settings.dvb_sub_source_settings.pid == null || (item.selector_settings.dvb_sub_source_settings.pid >= 1))))])))])
      )
    ])
    error_message = "must be at least 1"
  }
  validation {
    condition = alltrue([
      for k, v in var.medialive_channels : (
        alltrue([for item in v.input_attachments : (item.input_settings == null || (item.input_settings.filter_strength == null || (item.input_settings.filter_strength >= 1 && item.input_settings.filter_strength <= 5)))])
      )
    ])
    error_message = "must be between 1 and 5"
  }
  # Note: 25 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

